.class public interface abstract Lcom/android/systemui/settings/ToggleSlider;
.super Ljava/lang/Object;
.source "ToggleSlider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/settings/ToggleSlider$Listener;
    }
.end annotation


# virtual methods
.method public abstract getTracking()Z
.end method

.method public setChecked(Z)V
    .registers 2

    return-void
.end method

.method public abstract setMax(I)V
.end method

.method public abstract setOnChangedListener(Lcom/android/systemui/settings/ToggleSlider$Listener;)V
.end method

.method public abstract setValue(I)V
.end method
