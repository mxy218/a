.class public final synthetic Lcom/android/systemui/tuner/-$$Lambda$LockscreenFragment$App$ETExpSuIeTllbJ9AB_3DTGOAJgk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/tuner/LockscreenFragment$App;

.field private final synthetic f$1:Lcom/android/systemui/tuner/LockscreenFragment$Adapter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/tuner/LockscreenFragment$App;Lcom/android/systemui/tuner/LockscreenFragment$Adapter;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/tuner/-$$Lambda$LockscreenFragment$App$ETExpSuIeTllbJ9AB_3DTGOAJgk;->f$0:Lcom/android/systemui/tuner/LockscreenFragment$App;

    iput-object p2, p0, Lcom/android/systemui/tuner/-$$Lambda$LockscreenFragment$App$ETExpSuIeTllbJ9AB_3DTGOAJgk;->f$1:Lcom/android/systemui/tuner/LockscreenFragment$Adapter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/tuner/-$$Lambda$LockscreenFragment$App$ETExpSuIeTllbJ9AB_3DTGOAJgk;->f$0:Lcom/android/systemui/tuner/LockscreenFragment$App;

    iget-object p0, p0, Lcom/android/systemui/tuner/-$$Lambda$LockscreenFragment$App$ETExpSuIeTllbJ9AB_3DTGOAJgk;->f$1:Lcom/android/systemui/tuner/LockscreenFragment$Adapter;

    check-cast p1, Lcom/android/systemui/tuner/LockscreenFragment$Item;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/tuner/LockscreenFragment$App;->lambda$toggleExpando$0$LockscreenFragment$App(Lcom/android/systemui/tuner/LockscreenFragment$Adapter;Lcom/android/systemui/tuner/LockscreenFragment$Item;)V

    return-void
.end method
