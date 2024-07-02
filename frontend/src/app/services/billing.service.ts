import { getAxios } from "../utilities/axios.config"

const axios = getAxios()

class BillingService {

    static getDepartmentBillingHistory = async () => {
        try {
            const result = await axios.get('/getDepartmentBillingHistory')
            if(result.status === 200) return result.data
            else return []
        } catch (error) {
            return []
        } 
            
    }
}
export default BillingService