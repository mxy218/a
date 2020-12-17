.class Lcom/flyme/systemuitools/aod/presenter/GradientPresenter$GradientPresenterHolder;
.super Ljava/lang/Object;
.source "GradientPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemuitools/aod/presenter/GradientPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GradientPresenterHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/flyme/systemuitools/aod/presenter/GradientPresenter;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 20
    new-instance v0, Lcom/flyme/systemuitools/aod/presenter/GradientPresenter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/flyme/systemuitools/aod/presenter/GradientPresenter;-><init>(Lcom/flyme/systemuitools/aod/presenter/GradientPresenter$1;)V

    sput-object v0, Lcom/flyme/systemuitools/aod/presenter/GradientPresenter$GradientPresenterHolder;->INSTANCE:Lcom/flyme/systemuitools/aod/presenter/GradientPresenter;

    return-void
.end method

.method static synthetic access$000()Lcom/flyme/systemuitools/aod/presenter/GradientPresenter;
    .registers 1

    .line 19
    sget-object v0, Lcom/flyme/systemuitools/aod/presenter/GradientPresenter$GradientPresenterHolder;->INSTANCE:Lcom/flyme/systemuitools/aod/presenter/GradientPresenter;

    return-object v0
.end method
