.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$5tYL8h68wV-hXi-SExxOPbxnmho;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$5tYL8h68wV-hXi-SExxOPbxnmho;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$5tYL8h68wV-hXi-SExxOPbxnmho;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onDismiss()Z
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$5tYL8h68wV-hXi-SExxOPbxnmho;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$5tYL8h68wV-hXi-SExxOPbxnmho;->f$1:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$executeActionDismissingKeyguard$31$StatusBar(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method
