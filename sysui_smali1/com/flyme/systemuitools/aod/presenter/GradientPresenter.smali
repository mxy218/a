.class public Lcom/flyme/systemuitools/aod/presenter/GradientPresenter;
.super Ljava/lang/Object;
.source "GradientPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemuitools/aod/presenter/GradientPresenter$IGradientCallback;,
        Lcom/flyme/systemuitools/aod/presenter/GradientPresenter$GradientPresenterHolder;
    }
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/flyme/systemuitools/aod/presenter/GradientPresenter$IGradientCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/GradientPresenter;->mCallbacks:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/flyme/systemuitools/aod/presenter/GradientPresenter$1;)V
    .registers 2

    .line 7
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/GradientPresenter;-><init>()V

    return-void
.end method

.method public static final getInstance()Lcom/flyme/systemuitools/aod/presenter/GradientPresenter;
    .registers 1

    .line 16
    invoke-static {}, Lcom/flyme/systemuitools/aod/presenter/GradientPresenter$GradientPresenterHolder;->access$000()Lcom/flyme/systemuitools/aod/presenter/GradientPresenter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public registerCallback(Lcom/flyme/systemuitools/aod/presenter/GradientPresenter$IGradientCallback;)V
    .registers 3

    .line 24
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/GradientPresenter;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 25
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/GradientPresenter;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public updateGradientColors([I[I[I)V
    .registers 5

    .line 34
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/GradientPresenter;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemuitools/aod/presenter/GradientPresenter$IGradientCallback;

    if-eqz v0, :cond_6

    .line 36
    invoke-interface {v0, p1}, Lcom/flyme/systemuitools/aod/presenter/GradientPresenter$IGradientCallback;->updateClockGradientColor([I)V

    .line 37
    invoke-interface {v0, p2}, Lcom/flyme/systemuitools/aod/presenter/GradientPresenter$IGradientCallback;->updateDateGradientColor([I)V

    .line 38
    invoke-interface {v0, p3}, Lcom/flyme/systemuitools/aod/presenter/GradientPresenter$IGradientCallback;->updateNotificationIconGradientColor([I)V

    goto :goto_6

    :cond_1e
    return-void
.end method
