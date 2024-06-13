import os
import subprocess
import threading
import tkinter as tk
from tkinter import filedialog, ttk, messagebox
from collections import defaultdict
from datetime import datetime

class visual_grep:
    def __init__(self, root):
        self.root = root
        self.root.title("Visual Grep")
        self.root.geometry("1024x768")
        self.setup_menu()
        self.setup_widgets()
        
    def setup_menu(self):
        menubar = tk.Menu(self.root)
        self.root.config(menu=menubar)
        
        file_menu = tk.Menu(menubar, tearoff=0)
        menubar.add_cascade(label="File", menu=file_menu)
        file_menu.add_command(label="Exit", command=self.root.quit)
        
    def setup_widgets(self):
        frame = tk.Frame(self.root)
        frame.grid(row=0, column=0, sticky="nsew")

        self.root.grid_rowconfigure(0, weight=1)
        self.root.grid_columnconfigure(0, weight=1)
        
        search_frame = tk.Frame(frame)
        search_frame.grid(row=0, column=0, sticky="ew", padx=5, pady=5)

        search_frame.grid_columnconfigure(1, weight=1)
        
        tk.Label(search_frame, text="Directory:").grid(row=0, column=0, padx=5, pady=5, sticky="w")
        self.dir_entry = tk.Entry(search_frame)
        self.dir_entry.grid(row=0, column=1, padx=5, pady=5, sticky="ew")
        tk.Button(search_frame, text="Browse", command=self.browse_directory).grid(row=0, column=2, padx=5, pady=5)
        
        tk.Label(search_frame, text="Search for:").grid(row=0, column=3, padx=5, pady=5, sticky="w")
        self.search_entry = tk.Entry(search_frame, width=20)
        self.search_entry.grid(row=0, column=4, padx=5, pady=5, sticky="ew")
        tk.Button(search_frame, text="Search", command=self.start_search).grid(row=0, column=5, padx=5, pady=5)
        
        self.tree = ttk.Treeview(frame, columns=("filename", "file_path", "file_type", "matches", "date"), show="headings")
        self.tree.heading("filename", text="Filename")
        self.tree.heading("file_path", text="File Path")
        self.tree.heading("file_type", text="File Type")
        self.tree.heading("matches", text="Matches")
        self.tree.heading("date", text="Date/Time")

        # Set column widths
        self.tree.column("filename", width=100)  
        self.tree.column("file_path", width=250) 
        self.tree.column("file_type", width=50)
        self.tree.column("matches", width=25)
        self.tree.column("date", width=100)  

        self.tree.bind("<<TreeviewSelect>>", self.on_tree_select)
        self.tree.grid(row=1, column=0, sticky="nsew", padx=5, pady=5)
        
        frame.grid_rowconfigure(1, weight=1)
        frame.grid_columnconfigure(0, weight=1)
        
        self.text = tk.Text(frame, wrap=tk.NONE)
        self.text.grid(row=2, column=0, sticky="nsew", padx=5, pady=5)
        self.text.tag_configure("highlight", background="yellow", foreground="black")

        progress_frame = tk.Frame(frame)
        progress_frame.grid(row=3, column=0, sticky="ew", padx=5, pady=5)
        
        self.progress_label = tk.Label(progress_frame, text="Processed: 0/0")
        self.progress_label.grid(row=0, column=1, padx=5)
        
        self.file_folder_label = tk.Label(progress_frame, text="Found: 0 Mathes in 0 Files")
        self.file_folder_label.grid(row=0, column=2, padx=5)

    def browse_directory(self):
        directory = filedialog.askdirectory()
        if directory:
            self.dir_entry.delete(0, tk.END)
            self.dir_entry.insert(0, directory)
    
    def start_search(self):
        directory = self.dir_entry.get()
        search_term = self.search_entry.get()
        
        if not directory or not search_term:
            messagebox.showwarning("Input Error", "Please provide both directory and search term.")
            return
        
        self.search_term = search_term  # Store the search term for highlighting
        search_thread = threading.Thread(target=self.run_rust_grep, args=(directory, search_term))
        search_thread.start()
    
    def run_rust_grep(self, directory, search_term):
        try:

            rust_executable = os.path.join(os.path.dirname(__file__), "visual-grep")            
            process = subprocess.Popen([rust_executable, directory, search_term], stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
            
            results = []
            match_count = defaultdict(int)
            total_files = 0
            total_folders = 0
            
            while True:
                output = process.stdout.readline()
                if output == '' and process.poll() is not None:
                    break
                if output:
                    output = output.strip()
                    if output.startswith("Processed"):
                        parts = output.split()
                        self.progress_label.config(text=output)
                        self.root.update_idletasks()
                    elif ":" in output:
                        parts = output.split(':', 2)
                        if len(parts) == 3:
                            file_path = parts[0].strip()
                            match_count[file_path] += 1
            
            for file_path, count in match_count.items():
                filename = os.path.basename(file_path)
                extension = os.path.splitext(file_path)[1]
                filename_with_extension = filename + extension
                file_path = os.path.normpath(file_path)
                date_time = datetime.fromtimestamp(os.path.getmtime(file_path)).strftime('%m/%d/%Y %I:%M:%S %p')
                results.append((filename_with_extension, file_path, extension, count, date_time))
            
            self.update_treeview(results)
        except Exception as e:
            self.show_error(str(e))
    
    def update_treeview(self, results):
        self.tree.delete(*self.tree.get_children())
        
        total_files = len(results)

        # Get the total matches
        total_matches = sum([result[3] for result in results])
        
        for i, result in enumerate(results):
            self.tree.insert("", tk.END, values=result)
            # self.progress["value"] = i + 1
            self.file_folder_label.config(text=f"Found {total_matches} Matches in {total_files} Files")
            self.root.update_idletasks()
    
    def on_tree_select(self, event):
        selected_item = self.tree.selection()[0]
        file_path = self.tree.item(selected_item)["values"][1]
        
        with open(file_path, "r", errors="ignore") as file:
            content = file.read()
        
        self.text.delete(1.0, tk.END)
        self.text.insert(tk.END, content)
        self.highlight_occurrences()
    
    def highlight_occurrences(self):
        self.text.tag_remove("highlight", 1.0, tk.END)
        search_term = self.search_term
        start_pos = 1.0
        first_occurrence = None
        while True:
            start_pos = self.text.search(search_term, start_pos, tk.END, nocase=True)
            if not start_pos:
                break
            end_pos = f"{start_pos}+{len(search_term)}c"
            self.text.tag_add("highlight", start_pos, end_pos)
            if first_occurrence is None:
                first_occurrence = start_pos
            start_pos = end_pos
        if first_occurrence is not None:
            self.text.see(first_occurrence)

    def show_error(self, message):
        messagebox.showerror("Error", message)
        self.progress.stop()

if __name__ == "__main__":
    root = tk.Tk()
    app = visual_grep(root)
    root.mainloop()