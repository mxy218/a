.class Lcom/android/settings/display/NightDisplayActivationPreferenceController$1;
.super Ljava/lang/Object;
.source "NightDisplayActivationPreferenceController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/NightDisplayActivationPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/NightDisplayActivationPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/display/NightDisplayActivationPreferenceController;)V
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController$1;->this$0:Lcom/android/settings/display/NightDisplayActivationPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 43
    iget-object p1, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController$1;->this$0:Lcom/android/settings/display/NightDisplayActivationPreferenceController;

    invoke-static {p1}, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->access$000(Lcom/android/settings/display/NightDisplayActivationPreferenceController;)Landroid/hardware/display/ColorDisplayManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController$1;->this$0:Lcom/android/settings/display/NightDisplayActivationPreferenceController;

    invoke-static {v0}, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->access$000(Lcom/android/settings/display/NightDisplayActivationPreferenceController;)Landroid/hardware/display/ColorDisplayManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager;->isNightDisplayActivated()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/hardware/display/ColorDisplayManager;->setNightDisplayActivated(Z)Z

    .line 44
    iget-object p0, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController$1;->this$0:Lcom/android/settings/display/NightDisplayActivationPreferenceController;

    invoke-static {p0}, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->access$100(Lcom/android/settings/display/NightDisplayActivationPreferenceController;)V

    return-void
.end method
