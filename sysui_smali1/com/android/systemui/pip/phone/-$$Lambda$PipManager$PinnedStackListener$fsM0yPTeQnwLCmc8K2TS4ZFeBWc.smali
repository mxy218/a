.class public final synthetic Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PinnedStackListener$fsM0yPTeQnwLCmc8K2TS4ZFeBWc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;

.field private final synthetic f$1:Landroid/view/IPinnedStackController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;Landroid/view/IPinnedStackController;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PinnedStackListener$fsM0yPTeQnwLCmc8K2TS4ZFeBWc;->f$0:Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;

    iput-object p2, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PinnedStackListener$fsM0yPTeQnwLCmc8K2TS4ZFeBWc;->f$1:Landroid/view/IPinnedStackController;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PinnedStackListener$fsM0yPTeQnwLCmc8K2TS4ZFeBWc;->f$0:Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;

    iget-object p0, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PinnedStackListener$fsM0yPTeQnwLCmc8K2TS4ZFeBWc;->f$1:Landroid/view/IPinnedStackController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;->lambda$onListenerRegistered$0$PipManager$PinnedStackListener(Landroid/view/IPinnedStackController;)V

    return-void
.end method
