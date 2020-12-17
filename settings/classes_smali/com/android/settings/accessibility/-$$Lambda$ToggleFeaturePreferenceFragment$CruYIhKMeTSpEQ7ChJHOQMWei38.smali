.class public final synthetic Lcom/android/settings/accessibility/-$$Lambda$ToggleFeaturePreferenceFragment$CruYIhKMeTSpEQ7ChJHOQMWei38;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accessibility/-$$Lambda$ToggleFeaturePreferenceFragment$CruYIhKMeTSpEQ7ChJHOQMWei38;->f$0:Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 3

    iget-object p0, p0, Lcom/android/settings/accessibility/-$$Lambda$ToggleFeaturePreferenceFragment$CruYIhKMeTSpEQ7ChJHOQMWei38;->f$0:Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->lambda$addSwitchPrefrence$0$ToggleFeaturePreferenceFragment(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
