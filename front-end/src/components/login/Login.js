import { Link } from "react-router-dom";
import styles from "./styles.module.css";

function Login() {
	const googleAuth = () => {
		window.open(
			`${process.env.REACT_APP_API_URL}/auth/google/callback`,
			"_self"
		);
	};
	return (
		<div className={styles.container}>
			<h1 className={styles.heading}>Formulaire D'inscreption</h1>
			<div className={styles.form_container}>
				<div className={styles.left}>
					<img className={styles.img} src="./images/login.png" alt="login" />
				</div>
				<div className={styles.right}>
					<h2 className={styles.from_heading}>Se connecter</h2>
					<input type="text" className={styles.input} placeholder="Adresse Email" />
					<input type="password" className={styles.input} placeholder="Mot de passe" />
					<button className={styles.btn}><a href="/sign">Se connecter </a></button>
					<p className={styles.text}>Ou</p>
					<button className={styles.google_btn} onClick={googleAuth}>
						<img src="./Images/google.png" alt="google icon" />
						<a href="/sign">Via Google</a>
					</button>
					<p className={styles.text}>
						Vous n'avez pas de compte? <Link to="/signup">S'inscrire</Link>
					</p>
				</div>
			</div>
		</div>
	);
}

export default Login;