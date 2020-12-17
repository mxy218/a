.class Lcom/meizu/settings/display/BlueLightReductionPreference$1;
.super Ljava/lang/Object;
.source "BlueLightReductionPreference.java"

# interfaces
.implements Lcom/meizu/settings/display/QcomDisplayWrapper$DisplayConnnectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/display/BlueLightReductionPreference;->registerDisplayConnnectListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/display/BlueLightReductionPreference;


# direct methods
.method constructor <init>(Lcom/meizu/settings/display/BlueLightReductionPreference;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/meizu/settings/display/BlueLightReductionPreference$1;->this$0:Lcom/meizu/settings/display/BlueLightReductionPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/meizu/settings/display/BlueLightReductionPreference$1;->this$0:Lcom/meizu/settings/display/BlueLightReductionPreference;

    invoke-static {v0}, Lcom/meizu/settings/display/BlueLightReductionPreference;->access$000(Lcom/meizu/settings/display/BlueLightReductionPreference;)Landroid/widget/SeekBar;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 50
    iget-object v0, p0, Lcom/meizu/settings/display/BlueLightReductionPreference$1;->this$0:Lcom/meizu/settings/display/BlueLightReductionPreference;

    invoke-static {v0}, Lcom/meizu/settings/display/BlueLightReductionPreference;->access$000(Lcom/meizu/settings/display/BlueLightReductionPreference;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/settings/display/BlueLightReductionPreference$1;->this$0:Lcom/meizu/settings/display/BlueLightReductionPreference;

    invoke-static {p0}, Lcom/meizu/settings/display/BlueLightReductionPreference;->access$100(Lcom/meizu/settings/display/BlueLightReductionPreference;)Lcom/meizu/settings/display/QcomDisplayWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->getSavedEyeProtectLevel()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_1b
    return-void
.end method
