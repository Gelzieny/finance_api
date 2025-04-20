from pydantic import BaseModel, Field, StrictStr
from typing import Optional, Dict, List, Union, Tuple

class UsersModel(BaseModel):
  username:str = Field()
  email:str = Field()
  senha: str = Field()
  login: str = Field()
  status_users: bool = Field()