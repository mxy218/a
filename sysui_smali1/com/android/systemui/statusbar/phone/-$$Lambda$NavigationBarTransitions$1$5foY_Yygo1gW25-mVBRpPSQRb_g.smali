.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarTransitions$1$5foY_Yygo1gW25-mVBRpPSQRb_g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$1;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarTransitions$1$5foY_Yygo1gW25-mVBRpPSQRb_g;->f$0:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarTransitions$1$5foY_Yygo1gW25-mVBRpPSQRb_g;->f$0:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$1;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$1;->lambda$onWallpaperVisibilityChanged$0$NavigationBarTransitions$1()V

    return-void
.end method
