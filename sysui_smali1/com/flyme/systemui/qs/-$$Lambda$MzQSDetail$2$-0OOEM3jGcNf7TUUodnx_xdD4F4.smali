.class public final synthetic Lcom/flyme/systemui/qs/-$$Lambda$MzQSDetail$2$-0OOEM3jGcNf7TUUodnx_xdD4F4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/flyme/systemui/qs/MzQSDetail$2;

.field private final synthetic f$1:Lcom/android/systemui/plugins/qs/DetailAdapter;

.field private final synthetic f$2:I

.field private final synthetic f$3:I

.field private final synthetic f$4:I

.field private final synthetic f$5:Z


# direct methods
.method public synthetic constructor <init>(Lcom/flyme/systemui/qs/MzQSDetail$2;Lcom/android/systemui/plugins/qs/DetailAdapter;IIIZ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/flyme/systemui/qs/-$$Lambda$MzQSDetail$2$-0OOEM3jGcNf7TUUodnx_xdD4F4;->f$0:Lcom/flyme/systemui/qs/MzQSDetail$2;

    iput-object p2, p0, Lcom/flyme/systemui/qs/-$$Lambda$MzQSDetail$2$-0OOEM3jGcNf7TUUodnx_xdD4F4;->f$1:Lcom/android/systemui/plugins/qs/DetailAdapter;

    iput p3, p0, Lcom/flyme/systemui/qs/-$$Lambda$MzQSDetail$2$-0OOEM3jGcNf7TUUodnx_xdD4F4;->f$2:I

    iput p4, p0, Lcom/flyme/systemui/qs/-$$Lambda$MzQSDetail$2$-0OOEM3jGcNf7TUUodnx_xdD4F4;->f$3:I

    iput p5, p0, Lcom/flyme/systemui/qs/-$$Lambda$MzQSDetail$2$-0OOEM3jGcNf7TUUodnx_xdD4F4;->f$4:I

    iput-boolean p6, p0, Lcom/flyme/systemui/qs/-$$Lambda$MzQSDetail$2$-0OOEM3jGcNf7TUUodnx_xdD4F4;->f$5:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/flyme/systemui/qs/-$$Lambda$MzQSDetail$2$-0OOEM3jGcNf7TUUodnx_xdD4F4;->f$0:Lcom/flyme/systemui/qs/MzQSDetail$2;

    iget-object v1, p0, Lcom/flyme/systemui/qs/-$$Lambda$MzQSDetail$2$-0OOEM3jGcNf7TUUodnx_xdD4F4;->f$1:Lcom/android/systemui/plugins/qs/DetailAdapter;

    iget v2, p0, Lcom/flyme/systemui/qs/-$$Lambda$MzQSDetail$2$-0OOEM3jGcNf7TUUodnx_xdD4F4;->f$2:I

    iget v3, p0, Lcom/flyme/systemui/qs/-$$Lambda$MzQSDetail$2$-0OOEM3jGcNf7TUUodnx_xdD4F4;->f$3:I

    iget v4, p0, Lcom/flyme/systemui/qs/-$$Lambda$MzQSDetail$2$-0OOEM3jGcNf7TUUodnx_xdD4F4;->f$4:I

    iget-boolean v5, p0, Lcom/flyme/systemui/qs/-$$Lambda$MzQSDetail$2$-0OOEM3jGcNf7TUUodnx_xdD4F4;->f$5:Z

    invoke-virtual/range {v0 .. v5}, Lcom/flyme/systemui/qs/MzQSDetail$2;->lambda$onShowingDetail$0$MzQSDetail$2(Lcom/android/systemui/plugins/qs/DetailAdapter;IIIZ)V

    return-void
.end method
