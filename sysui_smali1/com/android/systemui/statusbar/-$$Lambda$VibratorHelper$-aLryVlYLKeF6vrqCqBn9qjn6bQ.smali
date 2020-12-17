.class public final synthetic Lcom/android/systemui/statusbar/-$$Lambda$VibratorHelper$-aLryVlYLKeF6vrqCqBn9qjn6bQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/VibratorHelper;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/VibratorHelper;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/-$$Lambda$VibratorHelper$-aLryVlYLKeF6vrqCqBn9qjn6bQ;->f$0:Lcom/android/systemui/statusbar/VibratorHelper;

    iput p2, p0, Lcom/android/systemui/statusbar/-$$Lambda$VibratorHelper$-aLryVlYLKeF6vrqCqBn9qjn6bQ;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/-$$Lambda$VibratorHelper$-aLryVlYLKeF6vrqCqBn9qjn6bQ;->f$0:Lcom/android/systemui/statusbar/VibratorHelper;

    iget p0, p0, Lcom/android/systemui/statusbar/-$$Lambda$VibratorHelper$-aLryVlYLKeF6vrqCqBn9qjn6bQ;->f$1:I

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/VibratorHelper;->lambda$vibrate$0$VibratorHelper(I)V

    return-void
.end method
