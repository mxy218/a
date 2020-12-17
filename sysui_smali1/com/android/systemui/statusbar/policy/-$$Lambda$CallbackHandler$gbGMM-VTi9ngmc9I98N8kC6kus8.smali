.class public final synthetic Lcom/android/systemui/statusbar/policy/-$$Lambda$CallbackHandler$gbGMM-VTi9ngmc9I98N8kC6kus8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

.field private final synthetic f$1:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

.field private final synthetic f$10:Ljava/lang/CharSequence;

.field private final synthetic f$11:Z

.field private final synthetic f$12:I

.field private final synthetic f$13:Z

.field private final synthetic f$14:Lcom/android/systemui/statusbar/policy/NetworkController$FlymeState;

.field private final synthetic f$2:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

.field private final synthetic f$3:I

.field private final synthetic f$4:I

.field private final synthetic f$5:Z

.field private final synthetic f$6:Z

.field private final synthetic f$7:I

.field private final synthetic f$8:Ljava/lang/CharSequence;

.field private final synthetic f$9:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZIZLcom/android/systemui/statusbar/policy/NetworkController$FlymeState;)V
    .registers 16

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$CallbackHandler$gbGMM-VTi9ngmc9I98N8kC6kus8;->f$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$CallbackHandler$gbGMM-VTi9ngmc9I98N8kC6kus8;->f$1:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$CallbackHandler$gbGMM-VTi9ngmc9I98N8kC6kus8;->f$2:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iput p4, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$CallbackHandler$gbGMM-VTi9ngmc9I98N8kC6kus8;->f$3:I

    iput p5, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$CallbackHandler$gbGMM-VTi9ngmc9I98N8kC6kus8;->f$4:I

    iput-boolean p6, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$CallbackHandler$gbGMM-VTi9ngmc9I98N8kC6kus8;->f$5:Z

    iput-boolean p7, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$CallbackHandler$gbGMM-VTi9ngmc9I98N8kC6kus8;->f$6:Z

    iput p8, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$CallbackHandler$gbGMM-VTi9ngmc9I98N8kC6kus8;->f$7:I

    iput-object p9, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$CallbackHandler$gbGMM-VTi9ngmc9I98N8kC6kus8;->f$8:Ljava/lang/CharSequence;

    iput-object p10, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$CallbackHandler$gbGMM-VTi9ngmc9I98N8kC6kus8;->f$9:Ljava/lang/CharSequence;

    iput-object p11, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$CallbackHandler$gbGMM-VTi9ngmc9I98N8kC6kus8;->f$10:Ljava/lang/CharSequence;

    iput-boolean p12, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$CallbackHandler$gbGMM-VTi9ngmc9I98N8kC6kus8;->f$11:Z

    iput p13, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$CallbackHandler$gbGMM-VTi9ngmc9I98N8kC6kus8;->f$12:I

    iput-boolean p14, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$CallbackHandler$gbGMM-VTi9ngmc9I98N8kC6kus8;->f$13:Z

    iput-object p15, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$CallbackHandler$gbGMM-VTi9ngmc9I98N8kC6kus8;->f$14:Lcom/android/systemui/statusbar/policy/NetworkController$FlymeState;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 16

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$CallbackHandler$gbGMM-VTi9ngmc9I98N8kC6kus8;->f$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$CallbackHandler$gbGMM-VTi9ngmc9I98N8kC6kus8;->f$1:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$CallbackHandler$gbGMM-VTi9ngmc9I98N8kC6kus8;->f$2:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$CallbackHandler$gbGMM-VTi9ngmc9I98N8kC6kus8;->f$3:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$CallbackHandler$gbGMM-VTi9ngmc9I98N8kC6kus8;->f$4:I

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$CallbackHandler$gbGMM-VTi9ngmc9I98N8kC6kus8;->f$5:Z

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$CallbackHandler$gbGMM-VTi9ngmc9I98N8kC6kus8;->f$6:Z

    iget v7, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$CallbackHandler$gbGMM-VTi9ngmc9I98N8kC6kus8;->f$7:I

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$CallbackHandler$gbGMM-VTi9ngmc9I98N8kC6kus8;->f$8:Ljava/lang/CharSequence;

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$CallbackHandler$gbGMM-VTi9ngmc9I98N8kC6kus8;->f$9:Ljava/lang/CharSequence;

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$CallbackHandler$gbGMM-VTi9ngmc9I98N8kC6kus8;->f$10:Ljava/lang/CharSequence;

    iget-boolean v11, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$CallbackHandler$gbGMM-VTi9ngmc9I98N8kC6kus8;->f$11:Z

    iget v12, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$CallbackHandler$gbGMM-VTi9ngmc9I98N8kC6kus8;->f$12:I

    iget-boolean v13, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$CallbackHandler$gbGMM-VTi9ngmc9I98N8kC6kus8;->f$13:Z

    iget-object v14, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$CallbackHandler$gbGMM-VTi9ngmc9I98N8kC6kus8;->f$14:Lcom/android/systemui/statusbar/policy/NetworkController$FlymeState;

    invoke-virtual/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->lambda$setMobileDataIndicators$0$CallbackHandler(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZIZLcom/android/systemui/statusbar/policy/NetworkController$FlymeState;)V

    return-void
.end method
