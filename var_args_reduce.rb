def full_name(first_name, *rest)
    rest.reduce(first_name){|fullname,other| fullname + ' '+ other}
end

p full_name('Harsha', 'Bhogle')
p full_name('Pradeep', 'Suresh', 'Satyanarayana')
p full_name('Horc', 'G.', 'M.', 'Moon')