__all__ = ["scripted_process"]
for x in __all__:
  __import__('lldb.plugins.' + x)
