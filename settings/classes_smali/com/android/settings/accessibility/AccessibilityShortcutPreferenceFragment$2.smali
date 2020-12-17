.class Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment$2;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "AccessibilityShortcutPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 200
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method protected isPageSearchEnabled(Landroid/content/Context;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method
