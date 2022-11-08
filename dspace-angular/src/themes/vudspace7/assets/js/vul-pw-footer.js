class VulFooter extends HTMLElement {
    constructor() {
        super();
        const shadow = this.attachShadow({ mode: 'open' });

        const footer = document.createElement('footer');
        footer.id = 'vu-footer';
        footer.classList.add('vu-footer', 'fresh');

        footer.innerHTML = `
            <div id="vu-social" class="vu-social">
                <div class="container">
                    <div class="row">
                        <section class="vu-footer__social text-center center-block"><h4 class="vu-footer__title"><a href="http://social.vanderbilt.edu">Connect with Vanderbilt Libraries</a></h4>
                            <ul class="social-icons h2">
                                <li class="facebook">
                                    <a href="https://www.facebook.com/vandylibraries" target="_blank" rel="noopener">
                                        <i title="follow us on facebook" class="fab fa-facebook-f fa-fw"></i>
                                    </a>
                                </li>
                                <li class="twitter">
                                    <a href="https://twitter.com/vandylibraries" target="_blank" rel="noopener">
                                        <i title="follow us on twitter" class="fab fa-twitter fa-fw"></i>
                                    </a>
                                </li>
                                <li class="instagram">
                                    <a href="https://www.instagram.com/vandylibraries/" target="_blank" rel="noopener">
                                        <i title="follow us on instagram" class="fab fa-instagram fa-fw"></i>
                                    </a>
                                </li>
                                <li class="youtube">
                                    <a href="https://www.youtube.com/playlist?list=PLB1EPeYUwa4n_I0CyMrQidztwO-SdENRm" target="_blank" rel="noopener">
                                        <i title="watch our youtube videos" class="fab fa-youtube fa-fw"></i>
                                    </a>
                                </li>
                                <li class="flickr">
                                    <a href="https://www.flickr.com/photos/vulibrary/" target="_blank" rel="noopener">
                                        <i title="view our photo album" class="fab fa-flickr fa-fw"></i>
                                    </a>
                                </li>
                                <li class="rss">
                                    <a href="https://newsonline.library.vanderbilt.edu/?feed=rss2" target="_blank" rel="noopener">
                                        <i title="subscribe to our news rss feed" class="fas fa-rss fa-fw"></i>
                                    </a>
                                </li>
                                <li class="linkedin">
                                    <a href="https://www.linkedin.com/company/jean-and-alexander-heard-libraries" target="_blank" rel="noopener">
                                        <i title="follow us on linkedin" class="fab fa-linkedin-in fa-fw"></i>
                                    </a>
                                </li>
                            </ul>
                        </section>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <section class="vu-footer__yourvu col-sm-3 clearfix"><h4 class="vu-footer__title">Your Vanderbilt</h4>
                        <ul>
                            <li><a href="https://www.vanderbilt.edu/alumni/">Alumni</a></li>
                            <li><a href="https://www.vanderbilt.edu/student/">Current Students</a></li>
                            <li><a href="https://www.vanderbilt.edu/faculty-staff/">Faculty &amp; Staff</a></li>
                            <li><a href="https://www.vanderbilt.edu/isss/">International Students</a></li>
                            <li><a href="https://news.vanderbilt.edu/for-media/">Media</a></li>
                            <li><a href="https://www.vanderbilt.edu/families/">Parents &amp; Family</a></li>
                            <li><a href="https://www.vanderbilt.edu/prospective/">Prospective Students</a></li>
                            <li><a href="https://www.vanderbilt.edu/academics/research/">Researchers</a></li>
                            <li><a href="https://www.vucommodores.com">Sports Fans</a></li>
                            <li><a href="https://www.vanderbilt.edu/community/">Visitors &amp; Neighbors</a></li>
                        </ul>
                    </section>
                    <section class="vu-footer__map col-sm-6 clearfix">
                        <div class="embed-responsive embed-responsive-16by9"><!--<p><iframe src="https://www.youtube.com/embed/videoseries?list=PLB1EPeYUwa4kR8T8GEPHayPR7sDTo85X0&amp;rel=0&amp;controls=0&amp;showinfo=0" width="300" height="150" frameborder="0"></iframe></p>-->

                        <h4 class="vu-footer__title">Support the Jean and Alexander Heard Libraries</h4>
                        <div class="row">
                            <div class="col-xs-3 col-sm-4 col-lg-3">
                                <a href="https://webapp.mis.vanderbilt.edu/olga/pub/landing?appealCode=Q13A8" class="give-now"><img src="https://www.library.vanderbilt.edu/images/giveNow-ccc.png" alt="Support the Library...Give Now" title="Support the Library...Give Now"></a>
                            </div>
                            <p class="col-xs-12 col-sm-8 col-lg-9">
                                Gifts to the Libraries support the learning and research needs of the entire Vanderbilt community. <a href="https://www.library.vanderbilt.edu/giving/">Learn more about giving to the Libraries.</a>
                            </p>
                        </div>
                                <div class="friend">
                                    <a href="https://www.library.vanderbilt.edu/friends/" class="btn btn-primary" style="color: #333;">
                                        <i class="fas fa-heart fa-fw" style="margin-right: 5px;"></i>Become a Friend of the Libraries
                                    </a>
                                </div>
                            </div>
                    </section>
                    <section class="vu-footer__popular col-sm-3 clearfix"><h4 class="vu-footer__title">Quick Links</h4>
                        <ul>
                            <li><a href="https://www.library.vanderbilt.edu/hours.php">Hours</a></li>
                            <li><a href="https://www.library.vanderbilt.edu/about">About</a></li>
                            <li><a href="https://www.library.vanderbilt.edu/about/employment.php">Employment</a></li>
                            <li><a href="https://www.library.vanderbilt.edu/staff">Staff Directory</a></li>
                            <li><a href="https://www.library.vanderbilt.edu/about/accessibility.php">Accessibility Services</a></li>
                            <li><a href="https://www.library.vanderbilt.edu/about/contact.php">Contact</a></li>
                            <li><a href="https://www.vanderbilt.edu">Vanderbilt University</a></li>
                        </ul>
                    </section>
                </div>
            </div>
            <section class="credits">
                <div class="container">
                    <div class="col-lg-12 text-center">
                        <p id="library-address">
                            <a href="https://www.library.vanderbilt.edu">Jean and Alexander Heard Libraries</a> &middot; 419 21st Avenue South &middot; Nashville, TN 37203 &middot; <a href="https://www.library.vanderbilt.edu/about/contact.php">Phone</a>&nbsp;&nbsp;<img src="https://www.library.vanderbilt.edu/images/USA_Federal_depository_library_logo.svg.png" title="Vanderbilt is a US Federal Depository Library" alt="Vanderbilt is a US Federal Depository Library" class="depository-logo">
                        </p>            
                        <p>
                            <small>
                                <span>&copy;</span>&nbsp;Vanderbilt University &middot; All rights reserved. Site Development: <a href="https://web.vanderbilt.edu/">Digital Strategies (Division of Communications)</a> &amp; <a href="https://ltds.library.vanderbilt.edu/">Library Technology and Digital Services</a>.
                                <br>
                                Vanderbilt University is committed to principles of equal opportunity and affirmative action. <a class="credits__link" href="https://www.vanderbilt.edu/about/accessibility/">Accessibility information</a>. <a class="credits__link" href="https://www.vanderbilt.edu/about/privacy">Privacy Policy</a>. <br>Vanderbilt&reg;, Vanderbilt University&reg;, V Oak Leaf Design&reg;, Star V Design&reg; and Anchor Down&reg; are trademarks of The Vanderbilt University
                            </small>
                        </p>
                    </div>
                </div>
            </section>
        `;

        shadow.appendChild(footer);
    }

    connectedCallback() {
        const { shadowRoot } = this;
        let stylesheet = 'vul-pw-footer.css';

        var link = document.createElement('link');
        link.setAttribute('rel', 'stylesheet');
        link.setAttribute('href', stylesheet);
        shadowRoot.appendChild(link);
    }
}

customElements.define('vul-footer', VulFooter);
