.class Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$5;
.super Ljava/lang/Object;
.source "ToggleAccessibilityServicePreferenceFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->createDialogDismissListener()Landroid/content/DialogInterface$OnDismissListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;)V
    .registers 2

    .line 411
    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$5;->this$0:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 5

    .line 414
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$5;->this$0:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-static {p1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->access$1000(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1a

    .line 415
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$5;->this$0:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-static {p1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->access$700(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;)Z

    move-result p1

    if-nez p1, :cond_32

    .line 416
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$5;->this$0:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    iget-object p1, p1, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mFeatureSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_32

    .line 418
    :cond_1a
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$5;->this$0:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-static {p1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->access$1000(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;)I

    move-result p1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_32

    .line 419
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$5;->this$0:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-static {p1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->access$700(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;)Z

    move-result p1

    if-nez p1, :cond_32

    .line 420
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$5;->this$0:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    iget-object p1, p1, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mFeatureSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 423
    :cond_32
    :goto_32
    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$5;->this$0:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-static {p0, v0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->access$702(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;Z)Z

    return-void
.end method
