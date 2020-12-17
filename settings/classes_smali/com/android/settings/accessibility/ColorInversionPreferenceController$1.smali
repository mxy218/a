.class Lcom/android/settings/accessibility/ColorInversionPreferenceController$1;
.super Ljava/lang/Object;
.source "ColorInversionPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/ColorInversionPreferenceController;->handleToggleInversionPreferenceChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/ColorInversionPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/ColorInversionPreferenceController;)V
    .registers 2

    .line 79
    iput-object p1, p0, Lcom/android/settings/accessibility/ColorInversionPreferenceController$1;->this$0:Lcom/android/settings/accessibility/ColorInversionPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 82
    iget-object p0, p0, Lcom/android/settings/accessibility/ColorInversionPreferenceController$1;->this$0:Lcom/android/settings/accessibility/ColorInversionPreferenceController;

    invoke-static {p0}, Lcom/android/settings/accessibility/ColorInversionPreferenceController;->access$000(Lcom/android/settings/accessibility/ColorInversionPreferenceController;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "accessibility_display_inversion_enabled"

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo p0, "persist.sys.meizu.aod"

    const-string p1, "0"

    .line 84
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
