.class public final synthetic Lcom/android/systemui/statusbar/-$$Lambda$StatusBarIconView$x3AGEt-5vRmE-DqrCK9ien5Lp2M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/StatusBarIconView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/StatusBarIconView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/-$$Lambda$StatusBarIconView$x3AGEt-5vRmE-DqrCK9ien5Lp2M;->f$0:Lcom/android/systemui/statusbar/StatusBarIconView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/-$$Lambda$StatusBarIconView$x3AGEt-5vRmE-DqrCK9ien5Lp2M;->f$0:Lcom/android/systemui/statusbar/StatusBarIconView;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->lambda$setDozing$1$StatusBarIconView(Ljava/lang/Float;)V

    return-void
.end method