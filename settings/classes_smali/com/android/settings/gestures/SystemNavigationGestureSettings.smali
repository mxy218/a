.class public Lcom/android/settings/gestures/SystemNavigationGestureSettings;
.super Lcom/android/settings/widget/RadioButtonPickerFragment;
.source "SystemNavigationGestureSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/gestures/SystemNavigationGestureSettings$NavModeCandidateInfo;
    }
.end annotation


# static fields
.field static BACK_GESTURE_INSET_DEFAULT_OVERLAY:I = 0x0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final BACK_GESTURE_INSET_OVERLAYS:[Ljava/lang/String;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_SYSTEM_NAV_3BUTTONS:Ljava/lang/String; = "system_nav_3buttons"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_SYSTEM_NAV_GESTURAL:Ljava/lang/String; = "system_nav_gestural"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_SYSTEM_NAV_MBACK:Ljava/lang/String; = "system_nav_mback"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final NAV_BAR_MODE_GESTURAL_OVERLAY_EXTRA_WIDE_BACK:Ljava/lang/String; = "com.android.internal.systemui.navbar.gestural_extra_wide_back"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final NAV_BAR_MODE_GESTURAL_OVERLAY_NARROW_BACK:Ljava/lang/String; = "com.android.internal.systemui.navbar.gestural_narrow_back"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final NAV_BAR_MODE_GESTURAL_OVERLAY_WIDE_BACK:Ljava/lang/String; = "com.android.internal.systemui.navbar.gestural_wide_back"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final PREFS_BACK_SENSITIVITY_KEY:Ljava/lang/String; = "system_navigation_back_sensitivity"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "system_navigation_settings_preferences"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mBackLongPressGesture:Landroidx/preference/SwitchPreference;

.field private mBackSideGesture:Landroidx/preference/SwitchPreference;

.field private mMBackGesture:Landroidx/preference/Preference;

.field private mMBackSummary:Ljava/lang/CharSequence;

.field private mMBackSummaryPressure:Ljava/lang/CharSequence;

.field private mOverlayManager:Landroid/content/om/IOverlayManager;

.field private mVideoPreference:Lcom/android/settings/widget/VideoPreference;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string v0, "com.android.internal.systemui.navbar.gestural_narrow_back"

    const-string v1, "com.android.internal.systemui.navbar.gestural"

    const-string v2, "com.android.internal.systemui.navbar.gestural_wide_back"

    const-string v3, "com.android.internal.systemui.navbar.gestural_extra_wide_back"

    .line 114
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->BACK_GESTURE_INSET_OVERLAYS:[Ljava/lang/String;

    const/4 v0, 0x1

    .line 121
    sput v0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->BACK_GESTURE_INSET_DEFAULT_OVERLAY:I

    .line 453
    new-instance v0, Lcom/android/settings/gestures/SystemNavigationGestureSettings$1;

    invoke-direct {v0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 78
    invoke-direct {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/gestures/SystemNavigationGestureSettings;)Landroid/content/Context;
    .registers 1

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/gestures/SystemNavigationGestureSettings;)Landroid/content/Context;
    .registers 1

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static getBackSensitivity(Landroid/content/Context;Landroid/content/om/IOverlayManager;)I
    .registers 7
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 315
    :goto_2
    sget-object v2, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->BACK_GESTURE_INSET_OVERLAYS:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1b

    const/4 v3, 0x0

    .line 318
    :try_start_8
    aget-object v2, v2, v1

    const/4 v4, -0x2

    invoke-interface {p1, v2, v4}, Landroid/content/om/IOverlayManager;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v3
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_f

    :catch_f
    if-eqz v3, :cond_18

    .line 320
    invoke-virtual {v3}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_18

    return v1

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1b
    const-string/jumbo p1, "system_navigation_settings_preferences"

    .line 325
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sget p1, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->BACK_GESTURE_INSET_DEFAULT_OVERLAY:I

    const-string/jumbo v0, "system_navigation_back_sensitivity"

    .line 326
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getCurrentSystemNavigationMode(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 331
    invoke-static {p0}, Lcom/android/settings/gestures/SystemNavigationPreferenceController;->isEdgeToEdgeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string/jumbo p0, "system_nav_gestural"

    return-object p0

    .line 333
    :cond_a
    invoke-static {p0}, Lcom/android/settings/gestures/SystemNavigationPreferenceController;->isSwipeUpEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_14

    const-string/jumbo p0, "system_nav_mback"

    return-object p0

    :cond_14
    const-string/jumbo p0, "system_nav_3buttons"

    return-object p0
.end method

.method private handleDetailBtn(Landroid/view/View;)V
    .registers 4

    .line 476
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->getCurrentSystemNavigationMode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "system_nav_gestural"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x0

    .line 477
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 478
    new-instance v0, Lcom/android/settings/gestures/SystemNavigationGestureSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings$2;-><init>(Lcom/android/settings/gestures/SystemNavigationGestureSettings;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_23

    :cond_1e
    const/16 p0, 0x8

    .line 487
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :goto_23
    return-void
.end method

.method private initFlymePreference()V
    .registers 5

    .line 492
    invoke-virtual {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->getDefaultKey()Ljava/lang/String;

    move-result-object v0

    .line 493
    invoke-virtual {p0}, Landroidx/preference/MzPreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    .line 494
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initFlymePreference: currentKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SystemNavigationGesture"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    new-instance v0, Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->mMBackGesture:Landroidx/preference/Preference;

    .line 499
    iget-object v0, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->mMBackGesture:Landroidx/preference/Preference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 500
    iget-object v0, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->mMBackGesture:Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1208b9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 501
    iget-object v0, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->mMBackGesture:Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1208b8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 502
    iget-object v0, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->mMBackGesture:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 503
    iget-object p0, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->mMBackGesture:Landroidx/preference/Preference;

    invoke-virtual {v1, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private isAnyServiceSupportAccessibilityButton()Z
    .registers 2

    .line 401
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    const/4 v0, -0x1

    .line 403
    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object p0

    .line 406
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 407
    iget v0, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_29
    const/4 p0, 0x0

    return p0
.end method

.method private isNavBarMagnificationEnabled()Z
    .registers 3

    .line 416
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "accessibility_display_magnification_navbar_enabled"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_13

    move v0, v1

    :cond_13
    return v0
.end method

.method static setBackSensitivity(Landroid/content/Context;Landroid/content/om/IOverlayManager;I)V
    .registers 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    if-ltz p2, :cond_2e

    .line 301
    sget-object v0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->BACK_GESTURE_INSET_OVERLAYS:[Ljava/lang/String;

    array-length v0, v0

    if-ge p2, v0, :cond_2e

    const/4 v0, 0x0

    const-string/jumbo v1, "system_navigation_settings_preferences"

    .line 306
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "system_navigation_back_sensitivity"

    .line 307
    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 308
    invoke-static {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->getCurrentSystemNavigationMode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "system_nav_gestural"

    if-ne p0, v0, :cond_2d

    .line 309
    sget-object p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->BACK_GESTURE_INSET_OVERLAYS:[Ljava/lang/String;

    aget-object p0, p0, p2

    invoke-static {p1, p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->setNavBarInteractionMode(Landroid/content/om/IOverlayManager;Ljava/lang/String;)V

    :cond_2d
    return-void

    .line 302
    :cond_2e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Sensitivity out of range."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static setCurrentSystemNavigationMode(Landroid/content/Context;Landroid/content/om/IOverlayManager;Ljava/lang/String;)V
    .registers 8
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setCurrentSystemNavigationMode: key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemNavigationGesture"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x76e8d558

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v1, :cond_44

    const v1, -0x51fa588d

    if-eq v0, v1, :cond_39

    const v1, -0x700f466

    if-eq v0, v1, :cond_2e

    goto :goto_4f

    :cond_2e
    const-string/jumbo v0, "system_nav_3buttons"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4f

    move p2, v3

    goto :goto_50

    :cond_39
    const-string/jumbo v0, "system_nav_gestural"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4f

    move p2, v2

    goto :goto_50

    :cond_44
    const-string/jumbo v0, "system_nav_mback"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4f

    move p2, v4

    goto :goto_50

    :cond_4f
    :goto_4f
    const/4 p2, -0x1

    :goto_50
    const-string v0, "mz_current_navigation_mode"

    if-eqz p2, :cond_73

    if-eq p2, v4, :cond_66

    if-eq p2, v3, :cond_59

    goto :goto_85

    :cond_59
    const-string p2, "com.android.internal.systemui.navbar.threebutton"

    .line 359
    invoke-static {p1, p2}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->setNavBarInteractionMode(Landroid/content/om/IOverlayManager;Ljava/lang/String;)V

    .line 361
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_85

    :cond_66
    const-string p2, "com.android.internal.systemui.navbar.twobutton"

    .line 353
    invoke-static {p1, p2}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->setNavBarInteractionMode(Landroid/content/om/IOverlayManager;Ljava/lang/String;)V

    .line 355
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_85

    .line 346
    :cond_73
    invoke-static {p0, p1}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->getBackSensitivity(Landroid/content/Context;Landroid/content/om/IOverlayManager;)I

    move-result p2

    .line 347
    sget-object v1, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->BACK_GESTURE_INSET_OVERLAYS:[Ljava/lang/String;

    aget-object p2, v1, p2

    invoke-static {p1, p2}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->setNavBarInteractionMode(Landroid/content/om/IOverlayManager;Ljava/lang/String;)V

    .line 349
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_85
    return-void
.end method

.method private static setIllustrationVideo(Lcom/android/settings/widget/VideoPreference;Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x0

    .line 377
    invoke-virtual {p0, v0, v0}, Lcom/android/settings/widget/VideoPreference;->setVideo(II)V

    .line 378
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x76e8d558

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_2f

    const v2, -0x51fa588d

    if-eq v1, v2, :cond_25

    const v0, -0x700f466

    if-eq v1, v0, :cond_1a

    goto :goto_3a

    :cond_1a
    const-string/jumbo v0, "system_nav_3buttons"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3a

    move v0, v3

    goto :goto_3b

    :cond_25
    const-string/jumbo v1, "system_nav_gestural"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3a

    goto :goto_3b

    :cond_2f
    const-string/jumbo v0, "system_nav_mback"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3a

    move v0, v4

    goto :goto_3b

    :cond_3a
    :goto_3a
    const/4 v0, -0x1

    :goto_3b
    if-eqz v0, :cond_56

    if-eq v0, v4, :cond_4c

    if-eq v0, v3, :cond_42

    goto :goto_5f

    :cond_42
    const p1, 0x7f110036

    const v0, 0x7f080731

    .line 394
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/widget/VideoPreference;->setVideo(II)V

    goto :goto_5f

    :cond_4c
    const p1, 0x7f110034

    const v0, 0x7f08072f

    .line 388
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/widget/VideoPreference;->setVideo(II)V

    goto :goto_5f

    :cond_56
    const p1, 0x7f110035

    const v0, 0x7f080730

    .line 382
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/widget/VideoPreference;->setVideo(II)V

    :goto_5f
    return-void
.end method

.method private static setNavBarInteractionMode(Landroid/content/om/IOverlayManager;Ljava/lang/String;)V
    .registers 3

    const/4 v0, -0x2

    .line 370
    :try_start_1
    invoke-interface {p0, p1, v0}, Landroid/content/om/IOverlayManager;->setEnabledExclusiveInCategory(Ljava/lang/String;I)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_5

    return-void

    :catch_5
    move-exception p0

    .line 372
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public bindPreferenceExtra(Lcom/android/settings/widget/RadioButtonPreference;Ljava/lang/String;Lcom/android/settingslib/widget/CandidateInfo;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 186
    instance-of p0, p3, Lcom/android/settings/gestures/SystemNavigationGestureSettings$NavModeCandidateInfo;

    if-eqz p0, :cond_14

    instance-of p0, p1, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;

    if-nez p0, :cond_9

    goto :goto_14

    .line 191
    :cond_9
    check-cast p3, Lcom/android/settings/gestures/SystemNavigationGestureSettings$NavModeCandidateInfo;

    invoke-virtual {p3}, Lcom/android/settings/gestures/SystemNavigationGestureSettings$NavModeCandidateInfo;->loadSummary()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 193
    check-cast p1, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;

    :cond_14
    :goto_14
    return-void
.end method

.method protected getCandidates()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/settingslib/widget/CandidateInfo;",
            ">;"
        }
    .end annotation

    .line 221
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "com.android.internal.systemui.navbar.gestural"

    .line 236
    invoke-static {p0, v1}, Lcom/android/settings/gestures/SystemNavigationPreferenceController;->isOverlayPackageAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2b

    .line 238
    new-instance v1, Lcom/android/settings/gestures/SystemNavigationGestureSettings$NavModeCandidateInfo;

    const v3, 0x7f121058

    .line 244
    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x7f121052

    .line 245
    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const-string/jumbo v5, "system_nav_gestural"

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/android/settings/gestures/SystemNavigationGestureSettings$NavModeCandidateInfo;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    .line 238
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2b
    const-string v1, "com.android.internal.systemui.navbar.threebutton"

    .line 249
    invoke-static {p0, v1}, Lcom/android/settings/gestures/SystemNavigationPreferenceController;->isOverlayPackageAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 251
    new-instance v1, Lcom/android/settings/gestures/SystemNavigationGestureSettings$NavModeCandidateInfo;

    const v3, 0x7f121059

    .line 257
    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x7f121053

    .line 258
    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    const-string/jumbo v4, "system_nav_3buttons"

    invoke-direct {v1, v3, p0, v4, v2}, Lcom/android/settings/gestures/SystemNavigationGestureSettings$NavModeCandidateInfo;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    .line 251
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4c
    return-object v0
.end method

.method protected getDefaultKey()Ljava/lang/String;
    .registers 4

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDefaultKey: mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0080

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemNavigationGesture"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->getCurrentSystemNavigationMode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .registers 1

    const/16 p0, 0x55e

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .registers 1

    const p0, 0x7f1600f6

    return p0
.end method

.method public synthetic lambda$onAttach$0$SystemNavigationGestureSettings(Landroid/view/View;)V
    .registers 2

    .line 147
    invoke-direct {p0, p1}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->handleDetailBtn(Landroid/view/View;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 5

    .line 130
    invoke-super {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onAttach(Landroid/content/Context;)V

    .line 131
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 132
    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getSuggestionFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

    move-result-object v0

    .line 133
    invoke-interface {v0, p1}, Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 134
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "pref_system_navigation_suggestion_complete"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string/jumbo v0, "overlay"

    .line 137
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 136
    invoke-static {v0}, Landroid/content/om/IOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->mOverlayManager:Landroid/content/om/IOverlayManager;

    .line 139
    new-instance v0, Lcom/android/settings/widget/VideoPreference;

    invoke-direct {v0, p1}, Lcom/android/settings/widget/VideoPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    .line 140
    iget-object v0, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    invoke-virtual {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->getDefaultKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->setIllustrationVideo(Lcom/android/settings/widget/VideoPreference;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    .line 142
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070719

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 143
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    .line 141
    invoke-virtual {v0, v1}, Lcom/android/settings/widget/VideoPreference;->setHeight(F)V

    const v0, 0x7f121051

    .line 145
    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->mMBackSummaryPressure:Ljava/lang/CharSequence;

    const v0, 0x7f121050

    .line 146
    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->mMBackSummary:Ljava/lang/CharSequence;

    .line 147
    iget-object p1, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    new-instance v0, Lcom/android/settings/gestures/-$$Lambda$SystemNavigationGestureSettings$XxrLQ73BYlLqv_YPXuvDqDyv7a8;

    invoke-direct {v0, p0}, Lcom/android/settings/gestures/-$$Lambda$SystemNavigationGestureSettings$XxrLQ73BYlLqv_YPXuvDqDyv7a8;-><init>(Lcom/android/settings/gestures/SystemNavigationGestureSettings;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/VideoPreference;->setOnViewBindedCallback(Lcom/android/settings/widget/VideoPreference$OnViewBindedCallback;)V

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .registers 6

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPreferenceClick: pre="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemNavigationGesture"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 546
    iget-object v1, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->mMBackGesture:Landroidx/preference/Preference;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_33

    .line 547
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/meizu/settings/gesture/NavigationBarClassicsGestureActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 548
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_56

    .line 549
    :cond_33
    iget-object v1, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->mBackSideGesture:Landroidx/preference/SwitchPreference;

    const/4 v3, 0x1

    if-ne p1, v1, :cond_45

    .line 550
    invoke-virtual {v1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_3f

    move v2, v3

    :cond_3f
    const-string p0, "mback_side_slip_gesture"

    invoke-static {v0, p0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v3

    .line 552
    :cond_45
    iget-object p0, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->mBackLongPressGesture:Landroidx/preference/SwitchPreference;

    if-ne p1, p0, :cond_56

    .line 553
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_50

    move v2, v3

    :cond_50
    const-string p0, "mback_long_press_screen_off"

    invoke-static {v0, p0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v3

    :cond_56
    :goto_56
    return v2
.end method

.method protected setDefaultKey(Ljava/lang/String;)Z
    .registers 4

    .line 277
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 287
    iget-object v1, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->mOverlayManager:Landroid/content/om/IOverlayManager;

    invoke-static {v0, v1, p1}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->setCurrentSystemNavigationMode(Landroid/content/Context;Landroid/content/om/IOverlayManager;Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    invoke-static {v0, p1}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->setIllustrationVideo(Lcom/android/settings/widget/VideoPreference;Ljava/lang/String;)V

    const-string/jumbo v0, "system_nav_gestural"

    .line 289
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_36

    .line 290
    invoke-direct {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->isAnyServiceSupportAccessibilityButton()Z

    move-result p1

    if-nez p1, :cond_23

    invoke-direct {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->isNavBarMagnificationEnabled()Z

    move-result p1

    if-eqz p1, :cond_36

    .line 291
    :cond_23
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/android/settings/SettingsTutorialDialogWrapperActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    .line 292
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 293
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_36
    const/4 p0, 0x1

    return p0
.end method

.method public updateCandidates()V
    .registers 12

    const-string v0, "SystemNavigationGesture"

    const-string/jumbo v1, "updateCandidates: "

    .line 158
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->getDefaultKey()Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->getSystemDefaultKey()Ljava/lang/String;

    move-result-object v1

    .line 161
    invoke-virtual {p0}, Landroidx/preference/MzPreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v8

    .line 162
    invoke-virtual {v8}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 163
    iget-object v2, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    invoke-virtual {v8, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->getCandidates()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_23

    return-void

    .line 169
    :cond_23
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_27
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/android/settingslib/widget/CandidateInfo;

    .line 170
    new-instance v10, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v10, v2}, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;-><init>(Landroid/content/Context;)V

    .line 172
    invoke-virtual {v5}, Lcom/android/settingslib/widget/CandidateInfo;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v10, v2, v5, v0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->bindPreference(Lcom/android/settings/widget/RadioButtonPreference;Ljava/lang/String;Lcom/android/settingslib/widget/CandidateInfo;Ljava/lang/String;)Lcom/android/settings/widget/RadioButtonPreference;

    .line 173
    invoke-virtual {v5}, Lcom/android/settingslib/widget/CandidateInfo;->getKey()Ljava/lang/String;

    move-result-object v4

    move-object v2, p0

    move-object v3, v10

    move-object v6, v0

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->bindPreferenceExtra(Lcom/android/settings/widget/RadioButtonPreference;Ljava/lang/String;Lcom/android/settingslib/widget/CandidateInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-virtual {v8, v10}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_27

    .line 176
    :cond_53
    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->mayCheckOnlyRadioButton()V

    .line 179
    invoke-direct {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->initFlymePreference()V

    return-void
.end method
