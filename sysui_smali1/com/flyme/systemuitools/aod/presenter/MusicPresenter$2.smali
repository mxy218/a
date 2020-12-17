.class Lcom/flyme/systemuitools/aod/presenter/MusicPresenter$2;
.super Ljava/lang/Object;
.source "MusicPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 151
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter$2;->this$0:Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 154
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter$2;->this$0:Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;

    invoke-static {v0}, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->access$200(Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;)Lcom/flyme/systemuitools/aod/view/AODMusicView;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 155
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter$2;->this$0:Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;

    invoke-static {v0}, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->access$000(Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->access$700(Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;I)Z

    move-result v0

    .line 156
    iget-object v1, p0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter$2;->this$0:Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;

    invoke-static {v1}, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->access$800(Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;)Lcom/flyme/systemuitools/aod/view/IAODDisplay;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/flyme/systemuitools/aod/view/IAODDisplay;->updateMusicState(Z)V

    .line 157
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter$2;->this$0:Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;

    invoke-static {p0}, Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;->access$800(Lcom/flyme/systemuitools/aod/presenter/MusicPresenter;)Lcom/flyme/systemuitools/aod/view/IAODDisplay;

    move-result-object p0

    invoke-interface {p0}, Lcom/flyme/systemuitools/aod/view/IAODDisplay;->updateAODViewVisible()V

    :cond_24
    return-void
.end method
