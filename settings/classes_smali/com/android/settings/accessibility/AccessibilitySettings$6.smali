.class Lcom/android/settings/accessibility/AccessibilitySettings$6;
.super Ljava/lang/Object;
.source "AccessibilitySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/AccessibilitySettings;->showInstallTalkBackDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/AccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V
    .registers 2

    .line 1143
    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettings$6;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1146
    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilitySettings$6;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string p1, "com.google.android.marvin.talkback"

    invoke-static {p0, p1}, Lcom/meizu/settings/utils/MzUtils;->installAppFromMzStore(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
