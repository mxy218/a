.class public final synthetic Lcom/android/systemui/tuner/-$$Lambda$LockscreenFragment$Adapter$fS6IuUEavDgpMOkDZLNh46UcUNQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/tuner/LockscreenFragment$Adapter;

.field private final synthetic f$1:Lcom/android/systemui/tuner/LockscreenFragment$Holder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/tuner/LockscreenFragment$Adapter;Lcom/android/systemui/tuner/LockscreenFragment$Holder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/tuner/-$$Lambda$LockscreenFragment$Adapter$fS6IuUEavDgpMOkDZLNh46UcUNQ;->f$0:Lcom/android/systemui/tuner/LockscreenFragment$Adapter;

    iput-object p2, p0, Lcom/android/systemui/tuner/-$$Lambda$LockscreenFragment$Adapter$fS6IuUEavDgpMOkDZLNh46UcUNQ;->f$1:Lcom/android/systemui/tuner/LockscreenFragment$Holder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/tuner/-$$Lambda$LockscreenFragment$Adapter$fS6IuUEavDgpMOkDZLNh46UcUNQ;->f$0:Lcom/android/systemui/tuner/LockscreenFragment$Adapter;

    iget-object p0, p0, Lcom/android/systemui/tuner/-$$Lambda$LockscreenFragment$Adapter$fS6IuUEavDgpMOkDZLNh46UcUNQ;->f$1:Lcom/android/systemui/tuner/LockscreenFragment$Holder;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/tuner/LockscreenFragment$Adapter;->lambda$onBindViewHolder$1$LockscreenFragment$Adapter(Lcom/android/systemui/tuner/LockscreenFragment$Holder;Landroid/view/View;)V

    return-void
.end method
