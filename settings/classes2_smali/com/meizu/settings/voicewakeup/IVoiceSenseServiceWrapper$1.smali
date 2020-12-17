.class Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper$1;
.super Ljava/lang/Object;
.source "IVoiceSenseServiceWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;->cvqFromDriverSuspend(Landroid/content/Context;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$isInit:Z

.field final synthetic val$withOEM:Z


# direct methods
.method constructor <init>(Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;Landroid/content/Context;ZZ)V
    .registers 5

    .line 122
    iput-object p1, p0, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper$1;->this$0:Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;

    iput-object p2, p0, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper$1;->val$context:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper$1;->val$isInit:Z

    iput-boolean p4, p0, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper$1;->val$withOEM:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 126
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper$1;->this$0:Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;

    iget-object v1, p0, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper$1;->val$context:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper$1;->val$isInit:Z

    iget-boolean p0, p0, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper$1;->val$withOEM:Z

    invoke-static {v0, v1, v2, p0}, Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;->access$000(Lcom/meizu/settings/voicewakeup/IVoiceSenseServiceWrapper;Landroid/content/Context;ZZ)Z

    return-void
.end method
