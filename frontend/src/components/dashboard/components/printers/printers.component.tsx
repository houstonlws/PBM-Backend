import React, { Component, ReactNode } from 'react';
import {
  Accordion,
  AccordionBody,
  AccordionHeader,
  AccordionItem,
  Stack,
} from 'react-bootstrap';
import { ConnectedProps, connect } from 'react-redux';
import { AppState } from '../../../../types/app.types';
import { addPrinter } from '../../../../store/actions/printer.actions';
import { Printer } from '../../../../types/printer.types';
import AddPrinterComponent from './components/add-printer.component';
import EditPrinterComponent from './components/edit-printer.component';
import { CONSTANTS } from '../../../../config/constants';
import ReportIssueComponent from './components/report-issue.component';

interface State {
  adding: boolean;
  tempPrinter: Printer;
}

const initialState: Printer = {
  id: '',
  serial_number: '',
  model: '',
  brand: '',
  location: '',
  installation_date: '',
  warranty_expiry_date: '',
  ip_address: '',
  mac_address: '',
  firmware_version: '',
  department_id: '',
};

class PrintersComponent extends Component<PrintersComponentProps, State> {
  constructor(props: PrintersComponentProps) {
    super(props);
    this.state = {
      adding: false,
      tempPrinter: initialState,
    };
  }

  onChange = (event: any) => {
    const { tempPrinter } = this.state;
    switch (event.target.id) {
      case 'serial':
        tempPrinter.serial_number = event.target.value;
        break;
      case 'brand':
        tempPrinter.brand = event.target.value;
        break;
      case 'model':
        tempPrinter.model = event.target.value;
        break;
      case 'location':
        tempPrinter.location = event.target.value;
        break;
      case 'ip':
        tempPrinter.ip_address = event.target.value;
        break;
      case 'mac':
        tempPrinter.mac_address = event.target.value;
        break;
      case 'firmware':
        tempPrinter.firmware_version = event.target.value;
        break;
      case 'install_date':
        tempPrinter.installation_date = event.target.value;
        break;
      case 'warranty':
        tempPrinter.warranty_expiry_date = event.target.value;
        break;
      default:
        return;
    }
    this.setState({ tempPrinter });
  };

  toggleAdding = () => {
    this.setState((prevState) => ({
      adding: !prevState.adding,
    }));
  };

  cancelAdd = () => {
    this.setState({ tempPrinter: initialState });
    this.toggleAdding();
  };

  addPrinter = () => {
    this.props.addPrinter(this.state.tempPrinter);
    window.alert('Added Printer');
  };

  render(): ReactNode {
    const { printers, type } = this.props!;

    return (
      <Stack data-testid='printers-component' gap={3}>
        {type === CONSTANTS.ADMIN && (
          <AddPrinterComponent></AddPrinterComponent>
        )}
        <Accordion>
          {printers?.map((printer: Printer, index) => (
            <AccordionItem
              key={index}
              eventKey={printer.id}
              style={{ marginTop: '5px' }}
            >
              <AccordionHeader className='d-flex justify-content-between'>
                <Stack direction='horizontal' gap={3}>
                  <div>
                    <strong>Serial:</strong> {printer.serial_number}
                  </div>
                  <div>
                    <strong>Model:</strong> {printer.model}
                  </div>
                  <div>
                    <strong>Brand:</strong> {printer.brand}
                  </div>
                  <div>
                    <strong>Location:</strong> {printer.location}
                  </div>
                  <div>
                    <strong>Department:</strong> {printer.department_id}
                  </div>
                </Stack>
              </AccordionHeader>
              <AccordionBody
                style={{
                  display: 'flex',
                  justifyContent: 'space-between',
                  borderTop: '1px solid #c8c8c8',
                }}
              >
                <div>
                  <div>
                    <strong>IP Address:</strong> {printer?.ip_address}
                  </div>
                  <div>
                    <strong>MAC Address:</strong> {printer?.mac_address}
                  </div>
                  <div>
                    <strong>Firmware Version:</strong>
                    {printer?.firmware_version}
                  </div>
                  <div>
                    <strong>Installation Date:</strong>
                    {printer?.installation_date}
                  </div>
                  <div>
                    <strong>Warranty Expiry Date:</strong>
                    {printer?.warranty_expiry_date}
                  </div>
                </div>
                <div className='d-flex'>
                  {type === CONSTANTS.ADMIN && (
                    <EditPrinterComponent
                      printer={printer}
                    ></EditPrinterComponent>
                  )}
                  <ReportIssueComponent
                    printer={printer}
                  ></ReportIssueComponent>
                </div>
              </AccordionBody>
            </AccordionItem>
          ))}
        </Accordion>
      </Stack>
    );
  }
}

const mapStateToProps = (state: AppState) => {
  return {
    printers: state.printer?.printers,
    type: state.auth?.user?.type,
  };
};

const mapDispatchToProps = {
  addPrinter,
};

const connector = connect(mapStateToProps, mapDispatchToProps);
export default connector(PrintersComponent);

type PrintersComponentProps = ConnectedProps<typeof connector>;