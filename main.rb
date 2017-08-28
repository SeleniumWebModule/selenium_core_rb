require_relative 'event/event'
require_relative 'model/model'
require_relative 'model/identifyby'
require_relative 'rule/rule'

def login
	
	screenLogin = Model::Screen.new('Login').instance

	userFindBy = Model::FindBy.new(IdentifyBy::NAME, 'j_username').instance
	user = Model::Component.new('user').instance
	user.registerAttribute(Model::Attribute.new('findBy', userFindBy))
	user.registerAttribute(Model::Attribute.new('value', 'gleimar'))
	user.registerEvent(Event::Keypress::INSTANCE)
	screenLogin.registerComponent(user)

	passUserFindBy = Model::FindBy.new(IdentifyBy::NAME, 'j_password').instance
	passUser = Model::Component.new('password').instance
	passUser.registerAttribute(Model::Attribute.new('findBy', passUserFindBy))
	passUser.registerAttribute(Model::Attribute.new('value', 'gleimar'))
	passUser.registerEvent(Event::Keypress::INSTANCE)
	screenLogin.registerComponent(passUser)

	btnAcessoFindBy = Model::FindBy.new(IdentifyBy::TAG_NAME, 'input').instance
	btnAcesso = Model::Component.new('acesso').instance
	btnAcesso.registerAttribute(Model::Attribute.new('findBy', btnAcessoFindBy))
	btnAcesso.registerAttribute(Model::Attribute.new('getValueBy', GetValueBy::VALUE))
	btnAcesso.registerAttribute(Model::Attribute.new('value', 'Acesso'))
	btnAcesso.registerEvent(Event::MouseClick::INSTANCE)
	screenLogin.registerComponent(btnAcesso)

	return screenLogin
end

def openUserAdd
	userAdd = Model::Screen.new('Usuário').instance
	
	mnuSeguranca = Model::Component.new('mnuSeguranca').instance
	mnuSegurancaFindBy = Model::FindBy.new(IdentifyBy::CLASS_NAME, 'z-menu-btn').instance
	mnuSeguranca.registerAttribute(Model::Attribute.new('findBy', mnuSegurancaFindBy))
	mnuSeguranca.registerAttribute(Model::Attribute.new('getValueBy', GetValueBy::TEXT))
	mnuSeguranca.registerAttribute(Model::Attribute.new('text', 'Segurança'))
	mnuSeguranca.registerEvent(Event::MouseClick::INSTANCE)
	userAdd.registerComponent(mnuSeguranca)

	mnuUsuario = Model::Component.new('mnuUsuario').instance
	mnuUsuarioFindBy = Model::FindBy.new(IdentifyBy::CLASS_NAME, 'z-menu-item-cnt').instance
	mnuUsuario.registerAttribute(Model::Attribute.new('findBy', mnuUsuarioFindBy))
	mnuUsuario.registerAttribute(Model::Attribute.new('getValueBy', GetValueBy::TEXT))
	mnuUsuario.registerAttribute(Model::Attribute.new('text', 'Usuário'))
	mnuUsuario.registerEvent(Event::MouseClick::INSTANCE)
	userAdd.registerComponent(mnuUsuario)	

	btnUserAdd = Model::Component.new('Cadastrar Usuário').instance
	btnUserAddFindBy = Model::FindBy.new(IdentifyBy::CLASS_NAME, 'z-button-os').instance
	btnUserAdd.registerAttribute(Model::Attribute.new('findBy', btnUserAddFindBy))
	btnUserAdd.registerAttribute(Model::Attribute.new('getValueBy', GetValueBy::TITLE))
	btnUserAdd.registerAttribute(Model::Attribute.new('title', 'Incluir'))
	btnUserAdd.registerEvent(Event::MouseClick::INSTANCE)
	userAdd.registerComponent(btnUserAdd)

	return userAdd
end

def populateUserAdd
	newuser = Model::Screen.new('Cadastro de Usuário').instance
	fieldLogin = Model::Component.new('login').instance
	
	#screen
	findScreenBy = Model::FindBy.new(IdentifyBy::CLASS_NAME, 'z-window-highlighted').instance
	fieldLogin.registerAttribute(Model::Attribute.new('findScreenBy', findScreenBy))
	findTitleScreenBy = Model::FindBy.new(IdentifyBy::CLASS_NAME, 'z-window-highlighted-header').instance
	fieldLogin.registerAttribute(Model::Attribute.new('findTitleScreenBy', findTitleScreenBy))
	fieldLogin.registerAttribute(Model::Attribute.new('screenID', GetValueBy::TEXT))
	fieldLogin.registerAttribute(Model::Attribute.new('screenValue', 'Usuário'))

	#siblingParent
	findParentSiblingBy = Model::FindBy.new(IdentifyBy::TAG_NAME, 'tr').instance
	fieldLogin.registerAttribute(Model::Attribute.new('findParentSiblingBy', findParentSiblingBy))

	#sibling
	fieldLoginFindSiblingBy = Model::FindBy.new(IdentifyBy::CLASS_NAME, 'z-label').instance
	fieldLogin.registerAttribute(Model::Attribute.new('findSiblingBy', fieldLoginFindSiblingBy))
	fieldLogin.registerAttribute(Model::Attribute.new('siblingID', GetValueBy::TEXT))
	fieldLogin.registerAttribute(Model::Attribute.new('siblingValue', 'Login'))	

	#Login
	fieldLoginFindBy = Model::FindBy.new(IdentifyBy::CLASS_NAME, 'z-textbox').instance
	fieldLogin.registerAttribute(Model::Attribute.new('findBy', fieldLoginFindBy))
	fieldLogin.registerEvent(Event::Keypress::INSTANCE)
	newuser.registerComponent(fieldLogin)

	return newuser
end

seleniumSystem = Model::System.new('189.3.216.130', '8080', 'ventaboletosadm').instance
seleniumSystem.registerScreen(login)
seleniumSystem.registerScreen(openUserAdd)
seleniumSystem.registerScreen(populateUserAdd)
seleniumSystem.validate
#seleniumSystem.mapMenu(Model::FindBy.new(IdentifyBy::CLASS_NAME, 'z-menubar-hor').instance);

