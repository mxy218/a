.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$ScrimController$xRo1WgiULtMHpaX-VTe04p0hBHI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/ScrimController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/ScrimController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$ScrimController$xRo1WgiULtMHpaX-VTe04p0hBHI;->f$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$ScrimController$xRo1WgiULtMHpaX-VTe04p0hBHI;->f$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->lambda$blankDisplay$1$ScrimController()V

    return-void
.end method