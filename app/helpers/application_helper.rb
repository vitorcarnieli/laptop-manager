module ApplicationHelper
  def linked? entity
    if entity.links.count > 0
      if entity.links.last.end_date == nil
        entity.class == Laptop ? entity.links.last.beneficiary.name.split(" ").first : entity.links.last.laptop.listed_number.insert(2,"-")
      else
        "Ninguem"
      end

    end

  end
end
