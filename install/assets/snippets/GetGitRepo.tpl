/**
 * GetGitRepo
 *
 * GetGitRepo beta 1.0.3 get git hub repo info eand download link
 *
 * @version     1.0.3
 * @author      Author: Nicola Lambathakis
 * @category snippet
 * @internal @modx_category GitHub
 * @license http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)
 * @internal @installset base, sample
 */

$repo = isset($repo) ? $repo : 'evolution-cms/evolution';
$class = isset($class) ? $class : 'github-box-wrap';
$iconStars = isset($iconStars) ? $iconStars : 'true';
$iconForks = isset($iconForks) ? $iconForks : 'true';
$iconIssues = isset($iconIssues) ? $iconIssues : 'false';
$buttonIssues = isset($buttonIssues) ? $buttonIssues : 'false';

if(!$repo !== ""){
	
$repoArr = explode(",","$repos");
foreach ($repoArr as $repoval){	
$blockoutput .='<div data-repo="'.$repoval.'" class="'.$class.'"></div>';
}
}
$scriptoutput='
<script src="assets/snippets/git/jquery.github.evo2.js"></script>
<link href="assets/snippets/git/css/base.css" rel="stylesheet">
<script>
$("[data-repo]").github({
    iconStars:  '.$iconStars.',
    iconForks:  '.$iconStars.',
    iconIssues: '.$iconIssues.',
    buttonIssues: '.$buttonIssues.'
});
</script>';
$modx->regClientScript( $scriptoutput );
$output = $blockoutput;
return $output;
