.class Lcom/meizu/settings/display/MzDisplaySettings$1;
.super Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;
.source "MzDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/display/MzDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/display/MzDisplaySettings;


# direct methods
.method constructor <init>(Lcom/meizu/settings/display/MzDisplaySettings;)V
    .registers 2

    .line 116
    iput-object p1, p0, Lcom/meizu/settings/display/MzDisplaySettings$1;->this$0:Lcom/meizu/settings/display/MzDisplaySettings;

    invoke-direct {p0}, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .registers 2

    .line 119
    iget-object v0, p0, Lcom/meizu/settings/display/MzDisplaySettings$1;->this$0:Lcom/meizu/settings/display/MzDisplaySettings;

    invoke-static {v0}, Lcom/meizu/settings/display/MzDisplaySettings;->access$000(Lcom/meizu/settings/display/MzDisplaySettings;)Lcom/meizu/common/preference/SwitchPreference;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 120
    iget-object v0, p0, Lcom/meizu/settings/display/MzDisplaySettings$1;->this$0:Lcom/meizu/settings/display/MzDisplaySettings;

    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 122
    iget-object p0, p0, Lcom/meizu/settings/display/MzDisplaySettings$1;->this$0:Lcom/meizu/settings/display/MzDisplaySettings;

    invoke-static {p0}, Lcom/meizu/settings/display/MzDisplaySettings;->access$000(Lcom/meizu/settings/display/MzDisplaySettings;)Lcom/meizu/common/preference/SwitchPreference;

    move-result-object p0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    :cond_1f
    return-void
.end method
