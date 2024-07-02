import { Dispatch } from "redux";
import BillingService from "../../services/billing.service";
import { CONSTANTS } from "../../utilities/constants";

const{ GET_DEPARTMENT_BILLING_HISTORY_SUCCESS, GET_DEPARTMENT_BILLING_HISTORY_FAILURE } = CONSTANTS

export const getDepartmentBillingHistory = () => async (dispatch: Dispatch) => {
    try {
        const result = await BillingService.getDepartmentBillingHistory();
        dispatch({type: GET_DEPARTMENT_BILLING_HISTORY_SUCCESS, payload: result[0]})
    } catch (error) {
        dispatch({type: GET_DEPARTMENT_BILLING_HISTORY_FAILURE, payload: undefined})
    }
}