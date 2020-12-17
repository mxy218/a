.class public final synthetic Lcom/android/systemui/-$$Lambda$60rw5ghsFNPB4OvLwvmy1hJgGv0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/ScreenDecorations;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/ScreenDecorations;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/-$$Lambda$60rw5ghsFNPB4OvLwvmy1hJgGv0;->f$0:Lcom/android/systemui/ScreenDecorations;

    return-void
.end method


# virtual methods
.method public final onNavigationModeChanged(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/systemui/-$$Lambda$60rw5ghsFNPB4OvLwvmy1hJgGv0;->f$0:Lcom/android/systemui/ScreenDecorations;

    invoke-virtual {p0, p1}, Lcom/android/systemui/ScreenDecorations;->handleNavigationModeChange(I)V

    return-void
.end method
