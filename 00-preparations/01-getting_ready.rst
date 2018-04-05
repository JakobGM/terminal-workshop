=================================
How to get ready for the workshop
=================================

- Open your terminal (search for terminal from spotlight)
- Type each line into your terminal, and press <enter>

------------

    .. code-block:: bash

        cd
        git clone https://github.com/orakeltjenesten/terminal-workshop.git
        cd terminal-workshop
        source ./.misc/utils.sh

------------

You should now have the following commands available to you:

- ``section <number>``: Navigate to specific workspace section
- ``workspace <number>``: Navigate to the workshop of section <number>



If you want to output the slides to your terminal, you need to do the following (**Optional**):

------------

    .. code-block:: bash

        pip3 install -r .misc/requirements.txt

------------

If this does not work for you, do not worry, it is not strictly necessary for the workshop.
You can now output slides with the following command:

- ``slide <number>``: Show slide number <number> of current workshop section
