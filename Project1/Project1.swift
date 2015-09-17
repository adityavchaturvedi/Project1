let MIN_NBR = 2
let MAX_NBR = 3
let REPROD_NBR = 3

func totalTrueNeighbors(currentStates: [[Bool]], i: Int, j: Int) -> Int {
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
    if i != (currentStates.count-1) {
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
    return ctr
}

func NextStateCellResult(numNbrs: Int, older: Bool) -> Bool {
    if older {
        // Under-Population OR Over-Crowding
        if (numNbrs < MIN_NBR || numNbrs > MAX_NBR) {
            return false
        } else {
            return true
        }
    } else {
        // Reproduction
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
    var dictx = Dictionary<K, V>()
    
    init(capacity: Int) {
        self.capacity = capacity
    }
    
    func get(k: K) -> V? {
        // IMPLEMENT ME
        let v = dictx[k]
        return v
    }
    
    func set(k: K, v: V) {
        // IMPLEMENT ME
        dictx[k] = v
        
        
        /*
        * Set or insert the value if the key is not already present.
        * When the cache reached its capacity, it should invalidate the
        * least recently used item before inserting a new item.
        */
    }
}
