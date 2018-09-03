# A convenience wrapper for <tt>find(:first, *args)</tt>.
# You can pass in all the same arguments to this
# method as you can to <tt>find(:first)</tt>.
def first(*args)
    if args.any?
      if args.first.kind_of?(Integer) ||
           (loaded? && !args.first.kind_of?(Hash))
        to_a.first(*args)
      else  
        apply_finder_options(args.first).first
      end
    else
      find_first
    end
  end
  