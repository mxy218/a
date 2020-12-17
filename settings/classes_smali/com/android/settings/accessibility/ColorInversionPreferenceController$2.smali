.class Lcom/android/settings/accessibility/ColorInversionPreferenceController$2;
.super Ljava/lang/Object;
.source "ColorInversionPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

    .line 87
    iput-object p1, p0, Lcom/android/settings/accessibility/ColorInversionPreferenceController$2;->this$0:Lcom/android/settings/accessibility/ColorInversionPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2

    .line 90
    iget-object p0, p0, Lcom/android/settings/accessibility/ColorInversionPreferenceController$2;->this$0:Lcom/android/settings/accessibility/ColorInversionPreferenceController;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ColorInversionPreferenceController;->setChecked(Z)Z

    return-void
.end method
