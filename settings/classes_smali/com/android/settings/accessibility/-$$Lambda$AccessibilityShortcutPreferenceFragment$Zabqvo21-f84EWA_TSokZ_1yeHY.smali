.class public final synthetic Lcom/android/settings/accessibility/-$$Lambda$AccessibilityShortcutPreferenceFragment$Zabqvo21-f84EWA_TSokZ_1yeHY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accessibility/-$$Lambda$AccessibilityShortcutPreferenceFragment$Zabqvo21-f84EWA_TSokZ_1yeHY;->f$0:Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 3

    iget-object p0, p0, Lcom/android/settings/accessibility/-$$Lambda$AccessibilityShortcutPreferenceFragment$Zabqvo21-f84EWA_TSokZ_1yeHY;->f$0:Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->lambda$onCreate$0$AccessibilityShortcutPreferenceFragment(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
