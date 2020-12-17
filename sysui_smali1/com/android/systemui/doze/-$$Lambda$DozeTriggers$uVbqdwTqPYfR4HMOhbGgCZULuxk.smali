.class public final synthetic Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$uVbqdwTqPYfR4HMOhbGgCZULuxk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/doze/DozeTriggers;

.field private final synthetic f$1:Ljava/lang/Runnable;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/doze/DozeTriggers;Ljava/lang/Runnable;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$uVbqdwTqPYfR4HMOhbGgCZULuxk;->f$0:Lcom/android/systemui/doze/DozeTriggers;

    iput-object p2, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$uVbqdwTqPYfR4HMOhbGgCZULuxk;->f$1:Ljava/lang/Runnable;

    iput p3, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$uVbqdwTqPYfR4HMOhbGgCZULuxk;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$uVbqdwTqPYfR4HMOhbGgCZULuxk;->f$0:Lcom/android/systemui/doze/DozeTriggers;

    iget-object v1, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$uVbqdwTqPYfR4HMOhbGgCZULuxk;->f$1:Ljava/lang/Runnable;

    iget p0, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$uVbqdwTqPYfR4HMOhbGgCZULuxk;->f$2:I

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/systemui/doze/DozeTriggers;->lambda$requestPulse$2$DozeTriggers(Ljava/lang/Runnable;II)V

    return-void
.end method
