.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$MVkYf3B-uVxXy7rxrXvHR4SUXEU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$MVkYf3B-uVxXy7rxrXvHR4SUXEU;->f$0:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$MVkYf3B-uVxXy7rxrXvHR4SUXEU;->f$0:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    return-void
.end method
