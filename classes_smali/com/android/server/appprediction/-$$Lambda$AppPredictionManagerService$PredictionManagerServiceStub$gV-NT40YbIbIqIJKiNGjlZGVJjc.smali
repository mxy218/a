.class public final synthetic Lcom/android/server/appprediction/-$$Lambda$AppPredictionManagerService$PredictionManagerServiceStub$gV-NT40YbIbIqIJKiNGjlZGVJjc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Landroid/app/prediction/AppPredictionSessionId;


# direct methods
.method public synthetic constructor <init>(Landroid/app/prediction/AppPredictionSessionId;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appprediction/-$$Lambda$AppPredictionManagerService$PredictionManagerServiceStub$gV-NT40YbIbIqIJKiNGjlZGVJjc;->f$0:Landroid/app/prediction/AppPredictionSessionId;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/appprediction/-$$Lambda$AppPredictionManagerService$PredictionManagerServiceStub$gV-NT40YbIbIqIJKiNGjlZGVJjc;->f$0:Landroid/app/prediction/AppPredictionSessionId;

    check-cast p1, Lcom/android/server/appprediction/AppPredictionPerUserService;

    invoke-static {v0, p1}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->lambda$onDestroyPredictionSession$7(Landroid/app/prediction/AppPredictionSessionId;Lcom/android/server/appprediction/AppPredictionPerUserService;)V

    return-void
.end method
