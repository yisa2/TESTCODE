import os
import shutil

def remove_build_directory():
  """Removes the 'build' directory from the current working directory."""
  build_dir = os.path.join(os.getcwd(), "build")   # 获取当前build目录
  if os.path.exists(build_dir):
    try:
      shutil.rmtree(build_dir)
      print("Build directory removed successfully.")
    except OSError as e:
      print(f"Error removing build directory: {e}")
  else:
    print("Build directory does not exist.")

# Example usage:
remove_build_directory()
