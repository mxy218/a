.class Lcom/meizu/settings/widget/SearchView$VoiceListener;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Lcom/meizu/settings/search/FlymeVoiceSupportManager$OnVoiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VoiceListener"
.end annotation


# instance fields
.field mBind:Z

.field final synthetic this$0:Lcom/meizu/settings/widget/SearchView;


# direct methods
.method constructor <init>(Lcom/meizu/settings/widget/SearchView;)V
    .registers 2

    .line 295
    iput-object p1, p0, Lcom/meizu/settings/widget/SearchView$VoiceListener;->this$0:Lcom/meizu/settings/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected()V
    .registers 3

    const-string v0, "MzSearchView"

    const-string v1, "voice service connected"

    .line 315
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 316
    iput-boolean v0, p0, Lcom/meizu/settings/widget/SearchView$VoiceListener;->mBind:Z

    return-void
.end method

.method public onServiceDisconnected()V
    .registers 2

    const/4 v0, 0x0

    .line 321
    iput-boolean v0, p0, Lcom/meizu/settings/widget/SearchView$VoiceListener;->mBind:Z

    const-string p0, "MzSearchView"

    const-string v0, "voice service disconnected"

    .line 322
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStringOfVoiceRecieved(Ljava/lang/String;)V
    .registers 4

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "voice service recieved text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MzSearchView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object p0, p0, Lcom/meizu/settings/widget/SearchView$VoiceListener;->this$0:Lcom/meizu/settings/widget/SearchView;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/meizu/settings/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public onVoiceRecognitionFailed(Ljava/lang/String;)V
    .registers 2

    const-string p0, "MzSearchView"

    const-string p1, "voice recognitionFailed"

    .line 310
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
