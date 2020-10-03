```php
<?php
/**
 * Library Options
 */

return [
    /** Default Language in your website */
	'default_lang' => 'en',
    /** if you want to enable detect visitor browser language */
	'detect_browser_lang' => true,
    /** if you want to enable detect visitor country language */
	'detect_country_lang' => false,
    /**
        enable(true) if ypu want to hide language parameter
        from url if selected language is default language
    */
	'hide_default_language' => true,
    /** language parameter in url name */
	'lang_key' => 'lang',
    /**
        if you want to hide untranslated content
            - advanced using when connect library with database -
    */
	'hide_untranslated' => true,
    /**
        if you want to alert user about untranslated content
        (hide_untranslated must be false)
            - advanced using when connect library with database -
    */
	'alert_user_available_lang' => true,
];
```