.class public final synthetic Lcom/flyme/systemui/qs/-$$Lambda$MzQSDetail$2$zeVEqjFrNWPJxCmzDkbmYYL5BXs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/flyme/systemui/qs/MzQSDetail$2;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/flyme/systemui/qs/MzQSDetail$2;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/flyme/systemui/qs/-$$Lambda$MzQSDetail$2$zeVEqjFrNWPJxCmzDkbmYYL5BXs;->f$0:Lcom/flyme/systemui/qs/MzQSDetail$2;

    iput-boolean p2, p0, Lcom/flyme/systemui/qs/-$$Lambda$MzQSDetail$2$zeVEqjFrNWPJxCmzDkbmYYL5BXs;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/flyme/systemui/qs/-$$Lambda$MzQSDetail$2$zeVEqjFrNWPJxCmzDkbmYYL5BXs;->f$0:Lcom/flyme/systemui/qs/MzQSDetail$2;

    iget-boolean p0, p0, Lcom/flyme/systemui/qs/-$$Lambda$MzQSDetail$2$zeVEqjFrNWPJxCmzDkbmYYL5BXs;->f$1:Z

    invoke-virtual {v0, p0}, Lcom/flyme/systemui/qs/MzQSDetail$2;->lambda$onScanStateChanged$1$MzQSDetail$2(Z)V

    return-void
.end method
