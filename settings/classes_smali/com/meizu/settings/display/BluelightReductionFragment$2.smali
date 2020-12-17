.class Lcom/meizu/settings/display/BluelightReductionFragment$2;
.super Ljava/lang/Object;
.source "BluelightReductionFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/display/BluelightReductionFragment;->disablePreferenceWhenSwitchReduction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/display/BluelightReductionFragment;


# direct methods
.method constructor <init>(Lcom/meizu/settings/display/BluelightReductionFragment;)V
    .registers 2

    .line 178
    iput-object p1, p0, Lcom/meizu/settings/display/BluelightReductionFragment$2;->this$0:Lcom/meizu/settings/display/BluelightReductionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    const-string/jumbo v0, "persist.sys.enable.dc"

    const-string v1, "false"

    .line 180
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1c

    .line 182
    iget-object v0, p0, Lcom/meizu/settings/display/BluelightReductionFragment$2;->this$0:Lcom/meizu/settings/display/BluelightReductionFragment;

    invoke-static {v0}, Lcom/meizu/settings/display/BluelightReductionFragment;->access$200(Lcom/meizu/settings/display/BluelightReductionFragment;)Lcom/meizu/settings/display/BlueLightReductionPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 184
    :cond_1c
    iget-object p0, p0, Lcom/meizu/settings/display/BluelightReductionFragment$2;->this$0:Lcom/meizu/settings/display/BluelightReductionFragment;

    invoke-static {p0}, Lcom/meizu/settings/display/BluelightReductionFragment;->access$100(Lcom/meizu/settings/display/BluelightReductionFragment;)Lcom/meizu/common/preference/SwitchPreference;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    return-void
.end method
