let MIN_NBR = 2
let MAX_NBR = 3
let REPROD_NBR = 3

func totalTrueNeighbors(currentStates: [[Bool]], i: Int, j: Int) -> Int {
    return 2
}

func NextStateCellResult(numNbrs: Int, older: Bool) -> Bool {
    if older {
        if (numNbrs < MIN_NBR || numNbrs > MAX_NBR) {
            return false
        } else {
            return true
        }
    } else {
        if numNbrs == REPROD_NBR {
            return true
        } else {
            return false
        }
    }
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
