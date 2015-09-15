func nextCellStates(currentStates: [[Bool]]) -> [[Bool]] {
    
    var nextcells = [[Bool]](count: currentStates.count, repeatedValue: Array(count: currentStates[0].count, repeatedValue: false))
    for i in 0...(currentStates.count - 1) {
        for j in 0...(currentStates[0].count-1) {
            var ctr = 0
             // For the row before
            if i != 0 {
                if (currentStates[i-1][j]) {
                    ctr += 1
                }
                if j != 0 {
                    if (currentStates[i-1][j-1]) {
                        ctr += 1
                    }
                }
                if (j != currentStates[0].count-1) {
                    if (currentStates[i-1][j+1]) {
                        ctr += 1
                    }
                }
            }
            // For the row after
            if i != currentStates.count-1 {
                if (currentStates[i+1][j]) {
                    ctr += 1
                }
                if j != 0 {
                    if (currentStates[i+1][j-1]) {
                        ctr += 1
                    }
                }
                if (j != currentStates[0].count-1) {
                    if (currentStates[i+1][j+1]) {
                        ctr += 1
                    }
                }
            }
            // For the same row
            if j != 0 {
                if (currentStates[i][j-1]) {
                    ctr += 1
                }
            }
            if (j != currentStates[0].count-1) {
                if (currentStates[i][j+1]) {
                    ctr += 1
                }
            }
            
            if currentStates[i][j] {
                switch ctr {
                case 2, 3: nextcells[i][j] = true
                default: nextcells[i][j] = false
                }
            } else {
                if ctr == 3 {
                    nextcells[i][j] = true
                }
            }
        }
    }
    
    
    // IMPLEMENT ME
    // Take a look at https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life for the rules
    return nextcells
}

class LRUCache<K:Hashable, V> {
    private var capacity: Int

    init(capacity: Int) {
        self.capacity = capacity
    }

    func get(k: K) -> V? {
        // IMPLEMENT ME

        /*
        *  Get the value of the key if the key exists in the cache, otherwise return nil.
        */

        return nil
    }

    func set(k: K, v: V) {
        // IMPLEMENT ME

        /*
        * Set or insert the value if the key is not already present. 
        * When the cache reached its capacity, it should invalidate the 
        * least recently used item before inserting a new item.
        */
    }
}
