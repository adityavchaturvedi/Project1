func totalTrueNeighbors(currentStates: [[Bool]], i: Int, j: Int) -> Int {
    return 2
}

func NextStateCellResult(numNbrs: Int, older: Bool) -> Bool {
    return true
}


func nextCellStates(currentStates: [[Bool]]) -> [[Bool]] {
    //Create the returning array of same size
    var nextStates = [[Bool]](count: currentStates.count, repeatedValue: [Bool] (count: currentStates[0].count, repeatedValue: false))
    
    //Iterate through each element in the matrix to find neighbor.
    for (indexi, valuei) in currentStates.enumerate() {
        for (indexj, value) in valuei.enumerate() {
            
            let nbrs = totalTrueNeighbors(currentStates, i: indexi, j:indexj)
            nextStates[indexi][indexj] = NextStateCellResult(nbrs, older: value)
        }
    }
    // IMPLEMENT ME
    // Take a look at https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life for the rules
    return nextStates
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
