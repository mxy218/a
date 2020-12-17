.class public final synthetic Lcom/android/systemui/statusbar/policy/-$$Lambda$DateView$vGCRXqQ8in8_JREu2lPVJQ_kGqE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/policy/DateView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/DateView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$DateView$vGCRXqQ8in8_JREu2lPVJQ_kGqE;->f$0:Lcom/android/systemui/statusbar/policy/DateView;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$DateView$vGCRXqQ8in8_JREu2lPVJQ_kGqE;->f$0:Lcom/android/systemui/statusbar/policy/DateView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->lambda$onTimeTick$1$DateView()V

    return-void
.end method
