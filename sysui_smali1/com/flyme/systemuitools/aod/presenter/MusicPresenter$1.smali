.class Lcom/flyme/systemuitools/aod/presenter/MusicPresenter$1;
.super Ljava/lang/Object;
.source "MusicPresenter.java"

# interfaces
.implements Landroid/media/RemoteController$OnClientUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;


# direct methods
.method constructor <init>(Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;)V
    .registers 2

    .line 82
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter$1;->this$0:Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientChange(Z)V
    .registers 2

    return-void
.end method

.method public onClientMetadataUpdate(Landroid/media/RemoteController$MetadataEditor;)V
    .registers 5

    .line 116
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter$1;->this$0:Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;

    const-string v1, ""

    const/4 v2, 0x7

    invoke-virtual {p1, v2, v1}, Landroid/media/RemoteController$MetadataEditor;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->access$302(Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter$1;->this$0:Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Landroid/media/RemoteController$MetadataEditor;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->access$402(Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter$1;->this$0:Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;

    const/16 v2, 0xd

    invoke-virtual {p1, v2, v1}, Landroid/media/RemoteController$MetadataEditor;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->access$502(Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "title "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter$1;->this$0:Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;

    invoke-static {v0}, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->access$300(Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MusicPresenter"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter$1;->this$0:Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;

    invoke-static {p1}, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->access$500(Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "<unknown>"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5f

    .line 127
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter$1;->this$0:Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;

    invoke-static {p1}, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->access$600(Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->unknown_artist:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->access$502(Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;Ljava/lang/String;)Ljava/lang/String;

    .line 130
    :cond_5f
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter$1;->this$0:Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;

    invoke-static {p1}, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->access$400(Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7e

    .line 131
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter$1;->this$0:Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;

    invoke-static {p1}, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->access$600(Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->unknown_albumTitle:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->access$402(Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;Ljava/lang/String;)Ljava/lang/String;

    .line 134
    :cond_7e
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter$1;->this$0:Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;

    invoke-static {p1}, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->access$200(Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;)Lcom/flyme/systemuitools/aod/view/AODMusicView;

    move-result-object p1

    if-eqz p1, :cond_a1

    .line 135
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter$1;->this$0:Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;

    invoke-static {p1}, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->access$200(Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;)Lcom/flyme/systemuitools/aod/view/AODMusicView;

    move-result-object p1

    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter$1;->this$0:Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;

    invoke-static {v0}, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->access$300(Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter$1;->this$0:Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;

    invoke-static {v1}, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->access$400(Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter$1;->this$0:Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;

    invoke-static {p0}, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->access$500(Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, v1, p0}, Lcom/flyme/systemuitools/aod/view/AODMusicView;->updateMusicInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a1
    return-void
.end method

.method public onClientPlaybackStateUpdate(I)V
    .registers 4

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "music state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicPresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter$1;->this$0:Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;

    invoke-static {v0, p1}, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->access$002(Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;I)I

    .line 92
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter$1;->this$0:Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;

    invoke-static {p1}, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->access$200(Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;)Lcom/flyme/systemuitools/aod/view/AODMusicView;

    move-result-object p1

    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter$1;->this$0:Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;

    invoke-static {v0}, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->access$100(Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 93
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter$1;->this$0:Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;

    invoke-static {p1}, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->access$200(Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;)Lcom/flyme/systemuitools/aod/view/AODMusicView;

    move-result-object p1

    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter$1;->this$0:Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;

    invoke-static {p0}, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->access$100(Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p0, v0, v1}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onClientPlaybackStateUpdate(IJJF)V
    .registers 9

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClientPlaybackStateUpdate state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", stateChangeTimeMs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", currentPosMs = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", speed = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "MusicPresenter"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object p2, p0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter$1;->this$0:Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;

    invoke-static {p2, p1}, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->access$002(Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;I)I

    .line 104
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter$1;->this$0:Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;

    invoke-static {p1}, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->access$200(Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;)Lcom/flyme/systemuitools/aod/view/AODMusicView;

    move-result-object p1

    iget-object p2, p0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter$1;->this$0:Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;

    invoke-static {p2}, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->access$100(Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 105
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter$1;->this$0:Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;

    invoke-static {p1}, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->access$200(Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;)Lcom/flyme/systemuitools/aod/view/AODMusicView;

    move-result-object p1

    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter$1;->this$0:Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;

    invoke-static {p0}, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->access$100(Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 p2, 0x3e8

    invoke-virtual {p1, p0, p2, p3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onClientTransportControlUpdate(I)V
    .registers 2

    return-void
.end method
