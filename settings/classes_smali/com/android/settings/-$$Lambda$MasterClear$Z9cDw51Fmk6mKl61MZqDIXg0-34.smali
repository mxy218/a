.class public final synthetic Lcom/android/settings/-$$Lambda$MasterClear$Z9cDw51Fmk6mKl61MZqDIXg0-34;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/MasterClear;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/MasterClear;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/-$$Lambda$MasterClear$Z9cDw51Fmk6mKl61MZqDIXg0-34;->f$0:Lcom/android/settings/MasterClear;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 2

    iget-object p0, p0, Lcom/android/settings/-$$Lambda$MasterClear$Z9cDw51Fmk6mKl61MZqDIXg0-34;->f$0:Lcom/android/settings/MasterClear;

    invoke-virtual {p0, p1}, Lcom/android/settings/MasterClear;->lambda$onCreateView$0$MasterClear(Landroid/content/DialogInterface;)V

    return-void
.end method
