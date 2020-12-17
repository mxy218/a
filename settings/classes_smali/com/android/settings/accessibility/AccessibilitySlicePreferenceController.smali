.class public Lcom/android/settings/accessibility/AccessibilitySlicePreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "AccessibilitySlicePreferenceController.java"


# instance fields
.field private final OFF:I

.field private final ON:I

.field private final mComponentName:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 42
    iput p1, p0, Lcom/android/settings/accessibility/AccessibilitySlicePreferenceController;->ON:I

    const/4 p1, 0x0

    .line 43
    iput p1, p0, Lcom/android/settings/accessibility/AccessibilitySlicePreferenceController;->OFF:I

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySlicePreferenceController;->mComponentName:Landroid/content/ComponentName;

    .line 49
    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilitySlicePreferenceController;->mComponentName:Landroid/content/ComponentName;

    if-eqz p0, :cond_18

    return-void

    .line 50
    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Illegal Component Name from: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getAccessibilityServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .registers 5

    .line 99
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 102
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v0

    .line 104
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 105
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySlicePreferenceController;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    return-object v1

    :cond_2b
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .registers 1

    .line 90
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySlicePreferenceController;->getAccessibilityServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x3

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .registers 3

    .line 57
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySlicePreferenceController;->getAccessibilityServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0

    if-nez v0, :cond_9

    const-string p0, ""

    goto :goto_13

    .line 59
    :cond_9
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySlicePreferenceController;->isChecked()Z

    move-result p0

    invoke-static {v1, v0, p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getServiceSummary(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;Z)Ljava/lang/CharSequence;

    move-result-object p0

    :goto_13
    return-object p0
.end method

.method public isChecked()Z
    .registers 4

    .line 64
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "accessibility_enabled"

    .line 65
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_11

    goto :goto_12

    :cond_11
    move v2, v1

    :goto_12
    if-nez v2, :cond_15

    return v1

    .line 72
    :cond_15
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 73
    invoke-static {v0}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 75
    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilitySlicePreferenceController;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isSliceable()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public setChecked(Z)Z
    .registers 5

    .line 80
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySlicePreferenceController;->getAccessibilityServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 83
    :cond_8
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySlicePreferenceController;->mComponentName:Landroid/content/ComponentName;

    invoke-static {v0, v2, p1}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->setAccessibilityServiceState(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySlicePreferenceController;->isChecked()Z

    move-result p0

    if-ne p1, p0, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1
.end method
