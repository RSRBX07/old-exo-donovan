#Types init
types = Array.new()

#ordre : eau feu plante elec sol
types.push("eau", 1, 1, -1, -1, 0)
types.push("feu", -1, 1, 1, 0, -1)
types.push("plante", 1, -1, 1, 1, 0)
types.push("elec", 0, 0, 0, 0, -1)
types.push("sol", -1, 0, -1, 4, 0)
print types

#monster form: name,type1,type2
team = Array.new
id_monster = 0

for i in 0..4
    for j in 0..4
        if i != j
            id_monster += 1
            #monster form: name,type1,type2
            monster = Array.new("Monster_"+id_monster,types[i],types[j])
            oldTeam = team
            team.push(monster)
            if team.size > 6
                checkIfBetter(team, oldTeam)

            end
        end
    end
end

def checkIfBetter (team, oldTeam)
    res = Array.new()
    oldTotRes = 0
    newTotRes = 0
    for i in 0..5
        for j in 1..5
            res.push(oldTeam[j])
        end
    end
end

def checkWorst

end