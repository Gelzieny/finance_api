import re


class Utils:
  def somente_numeros(self, palavra):
    return ''.join(re.findall("\d+", str(palavra)))

  def number_to_real(self, id):
    return ' {:,.2f}'.format(float(id)).replace(',', 'v').replace('.', ',').replace('v', '.')

  def real_to_number(self, valor):
    if not str(valor).__contains__(','):
      return valor + ".00"
    x = valor.split(',')
    return float(x[0].replace('R$', '').replace('.', '') + "." + x[1])

  def formata_valores(self, id):
    return '{:,.2f}'.format(float(id)).replace(',', 'v').replace('.', ',').replace('v', '.')