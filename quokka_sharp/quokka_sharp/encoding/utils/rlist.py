class rlist(list):
  def __init__(self, default):
    self._default = default
  def __setitem__(self, key, value):
    if key >= len(self):
      self += [self._default] * (key - len(self) + 1)
    super(rlist, self).__setitem__(key, value)